<?php

/**
 *  \details &copy; 2011  Open Ximdex Evolution SL [http://www.ximdex.org]
 *
 *  Ximdex a Semantic Content Management System (CMS)
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as published
 *  by the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *
 *  See the Affero GNU General Public License for more details.
 *  You should have received a copy of the Affero GNU General Public License
 *  version 3 along with Ximdex (see LICENSE file).
 *
 *  If not, visit http://gnu.org/licenses/agpl-3.0.html.
 *
 *  @author Ximdex DevTeam <dev@ximdex.com>
 *  @version $Revision$
 */

namespace Ximdex\Metadata;

use Ximdex\Logger;
use Ximdex\Models\Channel;
use Ximdex\Models\Language;
use Ximdex\Models\Node;
use Ximdex\Models\NodeType;
use Ximdex\Models\RelSemanticTagsNodes;
use Ximdex\Models\StructuredDocument;
use Ximdex\Runtime\App;
use Ximdex\Runtime\DataFactory;
use Ximdex\Models\SemanticNamespaces;
use Ximdex\NodeTypes\NodeTypeConstants;

/***
    Class for Metadata Manegement
*/
class MetadataManager
{
    const IMAGE_METADATA_SCHEMA = "image-metadata.xml";
    const COMMON_METADATA_SCHEMA = "common-metadata.xml";
    const DOCUMENT_METADATA_SCHEMA = "document-metadata.xml";
    private $node;
    private $array_metadata;
    
    public function __construct($source_idnode)
    {
        $this->node = new Node($source_idnode);
        $this->updateMetadataNodes();
    }

    /** 
     * Returns the source node object
     * 
     * @return Object
    */
    public function getSourceNode()
    {
        return $this->node;    
    }

    /** 
     * Returns the schema Id for the current node
	 *
     * @return int
    */
    public function getMetadataSchema()
    {    
        $node = new Node($this->node->GetID());
        $projectNode = new Node($node->getProject());
        $schemesFolder = $projectNode->getChildren(NodeTypeConstants::TEMPLATE_VIEW_FOLDER);
        $nt = $this->node->nodeType->GetID(); 
        switch($nt)
        {
            case NodeTypeConstants::IMAGE_FILE:
            case NodeTypeConstants::XSIR_IMAGE_FILE:
                $name = MetadataManager::IMAGE_METADATA_SCHEMA;
                break;
            case NodeTypeConstants::BINARY_FILE:
                $name = MetadataManager::COMMON_METADATA_SCHEMA;
                break;
            case NodeTypeConstants::TEXT_FILE:
                $name = MetadataManager::COMMON_METADATA_SCHEMA;
                break;
            case NodeTypeConstants::XML_CONTAINER:
                $name = MetadataManager::DOCUMENT_METADATA_SCHEMA;
                break;
            default:
                Logger::warning("Type not found: setting the schema to document-metadata.xml");
                $name = MetadataManager::DOCUMENT_METADATA_SCHEMA;
        }
        $schema = new Node();
        if (!isset($schemesFolder[0])){
            return null;
        }
        $res = $schema->find("Idnode","Name = %s AND IdParent = %s",array($name,$schemesFolder[0]), MONO);
        return $res[0];
    }

    /** 
     * Returns the array with all the metadata files for a given idnode
     *  
     * @return array 
    */
    public function getMetadataNodes()
    {
        return $this->array_metadata;    
    }

    public function updateMetadataNodes()
    {
        $rnm = new \Ximdex\Models\RelNodeMetadata();
        $metadata_container = $rnm->find('idMetadata', "idNode = %s", array($this->node->GetID()), MONO);
        if ($metadata_container) {
            $node = new Node($metadata_container[0]);
            $this->array_metadata = $node->GetChildren();
        }
        else {
            $this->array_metadata = array();
        }
    }

    /** 
     * Returns the last version of the associated metadata file for a given idnode or NULL if not exists
    */
    public function getLastMetadataVersion()
    {
        //TODO
    }

    public static function getNodeFromMetadata($idMetadata)
    {
        $rnm = new \Ximdex\Models\RelNodeMetadata();
        $metadata_container = $rnm->find('IdRel, IdNode', "IdMetadata = %s", [$idMetadata], MULTI);
        if( count($metadata_container) == 1 ) {
            $idRel = $metadata_container[0]['IdNode'];
            return $idRel;
        }
        return null;
    }

    public static function addSystemMetadataToContent($metadataDocId, $content)
    {
        $metadata_node = new StructuredDocument($metadataDocId);
        $metadataDoc = new Node($metadataDocId);
        $idSource = self::getNodeFromMetadata($metadataDoc->GetParent());
        if (is_null($idSource)){
            return $content;
        }
        $node = new Node($idSource);
        $info = $node->loadData();
        $idLanguage = $metadata_node->get('IdLanguage');
        $domDoc = new \DOMDocument();
        $domDoc->formatOutput = true;
        $domDoc->preserveWhiteSpace = false;
        if (@$domDoc->loadXML("<root>".$content."</root>")) {
            if ($domDoc->getElementsByTagName('sys_info')->length > 0) {
                $nodeid = $domDoc->getElementsByTagName('nodeid')->item(0);
                $nodeid->nodeValue = $info['nodeid'];
                $name = $domDoc->getElementsByTagName('name')->item(0);
                $name->nodeValue = $info['name'];
                $parentid = $domDoc->getElementsByTagName('parentid')->item(0);
                $parentid->nodeValue = $info['parent'];
                $nodetype = $domDoc->getElementsByTagName('nodetype')->item(0);
                $nodetype->nodeValue = $info['typename'];
                $path = $domDoc->getElementsByTagName('path')->item(0);
                $path->nodeValue = $info['path'];
                if ($info['typename'] == "XmlContainer") {
                    $nodeid_child = $node->class->GetChildByLang($idLanguage);
                    $node_child = new Node($nodeid_child);
                    $version_node_child = $node_child->GetLastVersion();
                    $version_value = $version_node_child["Version"] . "." . $version_node_child["SubVersion"];
                } else {
                    if (isset($info["version"]) && isset($info["subversion"])) {
                        $version_value = $info["version"] . "." . $info["subversion"];
                    } else {
                        $version_value = ".";
                    }
                }
                $version = $domDoc->getElementsByTagName('version')->item(0);
                $version->nodeValue = $version_value;
            }
            if (method_exists($node->class, 'getCustomMetadata')) {
                $domNode = $node->class->getCustomMetadata();
                $domNode = $domDoc->importNode($domNode, true);
                $name = $domNode->nodeName;
                $nameNodes = $domDoc->getElementsByTagName($name);
                if ($nameNodes->length > 0) {
                    $parent = $nameNodes->item(0)->parentNode;
                    $parent->replaceChild($domNode, $nameNodes->item(0));
                } else {
                    $domDoc->appendChild($domNode);
                }
            }
            $relTags = new RelSemanticTagsNodes();
            $tags = $relTags->getTags($node->nodeID);
            $tagsNode = $domDoc->createElement('tags');
            foreach ($tags as $tag) {
                $ns = new SemanticNamespaces($tag['IdNamespace']);
                $nemo = $ns->get('nemo');
                $tagNode = $domDoc->createElement('tag');
                $tagNode->nodeValue = "{$tag["Name"]}:{$nemo}";
                $tagsNode->appendChild($tagNode);
            }
            $tagsFoundedNodes = $domDoc->getElementsByTagName('tags');
            if ($tagsFoundedNodes->length > 0) {
                $parent = $tagsFoundedNodes->item(0)->parentNode;
                $parent->replaceChild($tagsNode, $tagsFoundedNodes->item(0));
            } else {
                $domDoc->appendChild($tagsNode);
            }
            $metadata_node_update = new Node($metadataDocId);
            $string_xml = $domDoc->saveXML();
            $string_xml = str_replace('<?xml version="1.0"?>', '', $string_xml);
            $string_xml = str_replace('<root>', '', $string_xml);
            $string_xml = str_replace('</root>', '', $string_xml);
            return $string_xml;
        }
        else {
            Logger::error('Invalid XML content for metadata node ' . $node->GetDescription());
        }
        return $content;
    }

    /**
     * This function has to be called each time a new version/subversion of a node is created
     * If $this->node has type metadatadoc, it will search the node who has the metadata and
     * add a new row to \Ximdex\Models\RelNodeVersionMetadataVersion
     */
    public function updateMetadataVersion()
    {
        if ($this->node->GetNodeType() !=NodeTypeConstants::METADATA_DOCUMENT)
        {
            $rnm = new \Ximdex\Models\RelNodeMetadata();
            $metadata_container = $rnm->find('IdRel, IdMetadata', "IdNode = %s", [$this->node->GetID()], MULTI);
            if( count($metadata_container) == 1 ){
                $nodeInfo = $this->node->GetLastVersion();
                $idRel = $metadata_container[0]['IdRel'];
                $idMetadataContainer = $metadata_container[0]['IdMetadata'];
                $metadataContainer = new Node($idMetadataContainer);
                $metadataIdDocs = $metadataContainer->GetChildren();
                foreach($metadataIdDocs as $metadataIdDoc){
                    $df = new DataFactory($metadataIdDoc);
                    $df->AddVersion();
                    $metadataDoc = new Node($metadataIdDoc);
                    $metadataDocInfo = $metadataDoc->GetLastVersion();
                    $rnvmv = new \Ximdex\Models\RelNodeVersionMetadataVersion();
                    $rnvmv->set('idrnm', $idRel);
                    $rnvmv->set('idNodeVersion', $nodeInfo['IdVersion']);
                    $rnvmv->set('idMetadataVersion', $metadataDocInfo['IdVersion']);
                    $rnvmv->add();
                }
            }
        }
    }

    /** 
     * Update basic system info in metadata documents
    */
    public function updateSystemMetadata()
    {
        $info = $this->node->loadData();
        foreach ($this->array_metadata as $metadata_node_id) {
            $metadata_node = new StructuredDocument($metadata_node_id);
            $idLanguage = $metadata_node->get('IdLanguage');
            $content = $metadata_node->getContent();
            $domDoc = new \DOMDocument();
            $domDoc->formatOutput = true;
            $domDoc->preserveWhiteSpace = false;
            if ($domDoc->loadXML("<root>".$content."</root>")) {
                if($domDoc->getElementsByTagName('sys_info')->length > 0) {
                    $nodeid = $domDoc->getElementsByTagName('nodeid')->item(0);
                    $nodeid->nodeValue = $info['nodeid'];
                    $name = $domDoc->getElementsByTagName('name')->item(0);
                    $name->nodeValue = $info['name'];
                    $parentid = $domDoc->getElementsByTagName('parentid')->item(0);
                    $parentid->nodeValue = $info['parent'];
                    $nodetype = $domDoc->getElementsByTagName('nodetype')->item(0);
                    $nodetype->nodeValue = $info['typename'];
                    $path = $domDoc->getElementsByTagName('path')->item(0);
                    $path->nodeValue = $info['path'];
                    if ($info['typename'] == "XmlContainer") {
                        $nodeid_child = $this->node->class->GetChildByLang($idLanguage);
                        $node_child = new Node($nodeid_child);
                        $version_node_child = $node_child->GetLastVersion();
                        $version_value = $version_node_child["Version"] . "." . $version_node_child["SubVersion"];
                    } else {
                        if (isset($info["version"]) && isset($info["subversion"])) {
                            $version_value = $info["version"] . "." . $info["subversion"];
                        } else {
                            $version_value = ".";
                        }
                    }
                    $version = $domDoc->getElementsByTagName('version')->item(0);
                    $version->nodeValue = $version_value;
                }
                if(method_exists($this->node->class, 'getCustomMetadata')){
                    $domNode = $this->node->class->getCustomMetadata();
                    $domNode = $domDoc->importNode($domNode, true);
                    $name = $domNode->nodeName;
                    $nameNodes = $domDoc->getElementsByTagName($name);
                    if ($nameNodes->length > 0){
                        $parent = $nameNodes->item(0)->parentNode;
                        $parent->replaceChild($domNode, $nameNodes->item(0));
                    } else {
                        $domDoc->appendChild($domNode);
                    }
                }
                $relTags = new RelSemanticTagsNodes();
                $tags = $relTags->getTags($this->node->nodeID);
                $tagsNode = $domDoc->createElement('tags');
                foreach ($tags as $tag) {
                    $ns = new SemanticNamespaces($tag['IdNamespace']);
                    $nemo = $ns->get('nemo');
                    $tagNode = $domDoc->createElement('tag');
                    $tagNode->nodeValue = "{$tag["Name"]}:{$nemo}";
                    $tagsNode->appendChild($tagNode);
                }
                $tagsFoundedNodes = $domDoc->getElementsByTagName('tags');
                if ($tagsFoundedNodes->length > 0) {
                    $parent = $tagsFoundedNodes->item(0)->parentNode;
                    $parent->replaceChild($tagsNode, $tagsFoundedNodes->item(0));
                } else {
                    $domDoc->appendChild($tagsNode);
                }
                $metadata_node_update = new Node($metadata_node_id);
                $string_xml = $domDoc->saveXML();
                $string_xml = str_replace('<?xml version="1.0"?>', '', $string_xml);
                $string_xml = str_replace('<root>', '', $string_xml);
                $string_xml = str_replace('</root>', '', $string_xml);
                $metadata_node_update->setContent($string_xml, false);
                $messages = sprintf(_('All metadata %s has been successfully saved'), $this->node->Get('Name'));
            }
            else {
                $errors[] = _('The system cannot update system info in metadata documents');
                $errors[] = _('Operation could not be successfully completed');
            }
        }
    }

    /** 
     * Update basic system info in metadata document for a specific language
     * 
     * @param int $selectedLanguage
    */
    public function updateSystemMetadataByLang($selectedLanguage)
    {
        $info = $this->node->loadData();
        foreach ($this->array_metadata as $metadata_node_id) {
            $metadata_node = new StructuredDocument($metadata_node_id);
            $idLanguage = $metadata_node->get('IdLanguage');
            if ($selectedLanguage == $idLanguage) {
                $content = $metadata_node->getContent();
                $domDoc = new \DOMDocument();
                $domDoc->formatOutput = true;
                $domDoc->preserveWhiteSpace = false;
                if ($domDoc->loadXML("<root>".$content."</root>")) {

                    // This method only applies for XmlContainer (and its XML docs)
                    if ($info['typename'] == "XmlContainer") {
                        $nodeid_child = $this->node->class->GetChildByLang($selectedLanguage);
                        $node_child = new Node($nodeid_child);
                        $version_node_child = $node_child->GetLastVersion();
                        $version = $domDoc->getElementsByTagName('version')->item(0);
                        $version->nodeValue = $version_node_child["Version"].".".$version_node_child["SubVersion"];
                    }
                    $metadata_node_update = new Node($metadata_node_id);
                    $string_xml = $domDoc->saveXML();
                    $string_xml = str_replace('<?xml version="1.0"?>', '', $string_xml);
                    $string_xml = str_replace('<root>', '', $string_xml);
                    $string_xml = str_replace('</root>', '', $string_xml);
                    $metadata_node_update->setContent($string_xml);
                    $messages = sprintf(_('The metadata %s for %s has been successfully saved'), $this->node->Get('Name'), $selectedLanguage);
                }
                else {
                    $errors[] = _('The system cannot update system info in metadata documents');
                    $errors[] = _('Operation could not be successfully completed');
                }
            }
        }
    }

    /** 
     * Main public function. Returns the last version of the associated metadata file for a given idnode or NULL if not exists
     * 
     * @param array $lang
    */
    public function generateMetadata($lang = null){
        
        // Create the specific name with the format: NODEID-metadata
        $name = $this->buildMetadataFileName();
        
        // Check if the metadata node already exists in metadata hidden folder
        $idContent = $this->getMetadataDocument($name);

        // If not exist already the metadata folder.
        if (empty($idContent)) {
            $idm = $this->getMetadataSectionId();
            $aliases = array();
            $idSchema = $this->getMetadataSchema();
            if (!$lang) {
                $languages = $this->getMetadataLanguages();
            }
            else {
                $languages = $lang;
            }
            $channels = $this->getMetadataChannels();
            
            // We use the action like a service layer
            $this->createXmlContainer($idm, $name, $idSchema, $aliases, $languages, $channels);
            $this->addRelation($name);
            $this->updateMetadataNodes();
        }
        else {
            Logger::warning("The metadata file $name already exists!");
        }
    }

    /** 
     * Returns the name for the metadata file
     * 
     * @return string
    */
    private function buildMetadataFileName()
    {
        $idnode = $this->node->GetID();
        return $idnode . "-metadata";
    }

    /** 
     * Returns the id of a given metadata document name, if exists
     * 
     * @param string $metafileName
     * @return int 
    */
    private function getMetadataDocument($metafileName)
    {    
        // Getting the metadata folder id
        $idMetadataFolder = $this->getMetadataSectionId();
        $metadataFolder = new Node($idMetadataFolder);

        // Getting the metadata document by name
        $id = $metadataFolder->GetChildByName($metafileName);
        return $id;
    }

    /** 
     * Returns the id for the metadata section that is unique for each project on Ximdex CMS
     * 
     * @return int 
    */
    private function getMetadataSectionId()
    {
        $idServer = $this->node->getServer();
        if ($idServer) {
            $nodeServer = new Node($idServer);
            $idSection = $nodeServer->GetChildByName("metadata");
            return $idSection;
        }
        $idProject = $this->node->getProject();
        $nodeProject = new Node($idProject);
        $idSection = $nodeProject->GetChildByName("metadata");
        return $idSection;
    }

    /** 
     * Returns an array of language identifiers
     * 
     * @return array
    */
    public function getMetadataLanguages()
    {
        $result = array();
        $l = new Language();
        $arrayLanguagesObject = $l->getLanguagesForNode($this->node->getServer());
        foreach($arrayLanguagesObject as $languageObject) {
            $result[] = $languageObject["IdLanguage"];
        }
        return $result;
    }

    /** 
     * Returns all the channels defined on Ximdex CMS
     * 
     * @return array
     * TODO: only return the associated channels
    */
    public function getMetadataChannels()
    {
        $result = array();
        $channel = new Channel();
        $channels = $channel->GetAllChannels();
        foreach($channels as $idChannel) {
            $auxChannel = new Channel($idChannel);
            switch ($auxChannel->GetName()) {
                case "solr":
                case "web":
                case "html":
                $result[] = $idChannel;
                break;
            }
        }
        return $result;
    }

    /** 
     * Most important method. Creates the structured documents
     * 
     * @param int $idNode
     * @param string $name
     * @param int $idSchema
     * @param array $aliases
     * @param array $languages
     * @param array $channels
     * @return int
    */
    private function createXmlContainer($idNode, $name, $idschema, & $aliases, & $languages, & $channels, $master = null)
    {
        $result = true;
        $node = new Node($idNode);
        $idNode = $node->get('IdNode');
        if (!($idNode > 0)) {
            Logger::error("An error ocurred estimating parent node, operation will be aborted, contact with your administrator");
            $values = array('name' => 'Unknown');
            return ["error" => $values];
        }

        // Creating container
        $baseIoInferer = new \Ximdex\IO\BaseIOInferer();
        $inferedNodeType = $baseIoInferer->infereType('FOLDER', $idNode);
        $nodeType = new NodeType();
        $nodeType->SetByName($inferedNodeType['NODETYPENAME']);
        if (!($nodeType->get('IdNodeType') > 0)) {
            Logger::error("A nodetype could not be estimated to create the container folder, operation will be aborted, contact with your administrator");
        }

        // Just the selected checks will be created.
        $selectedAlias = array();
        foreach ($languages as $idLang) {
            $selectedAlias[$idLang] = "";
        }
        $data = array(
            'NODETYPENAME' => $nodeType->get('Name'),
            'NAME' => $name,
            'PARENTID' => $idNode,
            'FORCENEW' => true,
            'CHILDRENS' => array(
                array('NODETYPENAME' => 'VISUALTEMPLATE', 'ID' => $idschema)
            ),
            "CHANNELS" => $channels,
            "LANGUAGES" => $languages,
            "ALIASES" => $selectedAlias,
            "MASTER" => $master
        );
        $baseIO = new \Ximdex\IO\BaseIO();
        $idContainer = $result = $baseIO->build($data);
        if (!($result > 0)) {
            Logger::error("An error ocurred creating the container node");
            $values = array(
            'idNode' => $idNode,
            'nodeName' => $name
            );
            return ["error" => $values];
        } else {
            Logger::info("Container $name has been successfully created");            
        }
        return true;
    }

    private function addRelation($name)
    {
        $res = 0;
        $rnm = new \Ximdex\Models\RelNodeMetadata();
        $idm = $this->getMetadataDocument($name);
        
        //TODO: foreach language version, one entry
        $rnm->set('IdNode', $this->node->GetID());
        $rnm->set('IdMetadata', $idm);
        
        //TODO: foreach language version, one entry
        $res = $rnm->add();
        if ($res < 0) {
            Logger::error("Relation between nodes not added.");
        }
        
        //TODO: move this logic to the \Ximdex\Models\RelNodeMetadata class
        // For structured documents, the association between versions have to be more accurate.
        else {
            $sourceNode = new Node($this->node->GetID());
            $idmNode = new Node($idm);
            $pairs = array();
            if ($sourceNode->nodeType->GetID()== NodeTypeConstants::XML_CONTAINER) {
                $children = $sourceNode->GetChildren();
                
                // Insert the structured documents ids
                foreach($children as $child) {
                    $sd = new StructuredDocument($child);
                    $l = $sd->GetLanguage();
                    $pairs[$l]["nv"] = $child;
                }
                
                // Insert the metadata files ids
                $metadocs = $idmNode->GetChildren();
                foreach($metadocs as $idMetadataLanguage) {
                    $sd = new StructuredDocument($idMetadataLanguage);
                    $l = $sd->GetLanguage();
                    $pairs[$l]["mv"] = $idMetadataLanguage;        
                }
                
                // Adding relations between versions
                foreach($pairs as $lang => $nodes) {
                    
                    // Version for the node
                    $dtf = New DataFactory($nodes["nv"]);
                    $idNodeVersion = $dtf->GetLastVersionId();
                    // Version for the metadata 
                    $dtf = New DataFactory($nodes["mv"]);
                    $idMetadataVersion = $dtf->GetLastVersionId();

                    // Adding the info
                    $rnvmv = new \Ximdex\Models\RelNodeVersionMetadataVersion();
                    $rnvmv->set('idrnm',$res);
                    $rnvmv->set('idNodeVersion',$idNodeVersion);
                    $rnvmv->set('idMetadataVersion',$idMetadataVersion);
                    $res2 = $rnvmv->add();
                    if ($res < 0) {
                        Logger::error("Relation between versions of nodes [".$nodes['nv']." - ".$nodes['mv']."] not added." );
                    }
                }
            }
            else {
                
                // Getting the source node's last version id
                $dtf = New DataFactory($this->node->GetID());
                $idNodeVersion = $dtf->GetLastVersionId();

                // Getting all the language children
                $metadocs = $idmNode->GetChildren();
                foreach($metadocs as $idMetadataLanguage) {

                    // Getting the last version of each child
                    $dtf = New DataFactory($idMetadataLanguage);
                    $idMetadataVersion = $dtf->GetLastVersionId();

                    // Adding the info
                    $rnvmv = new \Ximdex\Models\RelNodeVersionMetadataVersion();
                    $rnvmv->set('idrnm',$res);
                    $rnvmv->set('idNodeVersion',$idNodeVersion);
                    $rnvmv->set('idMetadataVersion',$idMetadataVersion);
                    $res2 = $rnvmv->add();
                    if ($res < 0){
                        Logger::error("Relation between versions not added.");
                    }
                }
            }
        }
    }

    public function deleteMetadata()
    {
        $name = $this->buildMetadataFileName();
        $idContent = $this->getMetadataDocument($name);
        if ($idContent){
            $nodeContainer = new Node($idContent);
            $nodeContainer->DeleteNode();
        }
        if(! App::getValue('MODULE_XIMNOTA_ENABLED', false)) {
            return;
        }
        $rnm = new \Ximdex\Models\RelNodeMetadata();
        $id = $rnm->find("idRel", "IdMetadata=%s", array($idContent), MONO);
        $rnm->set('idRel', $id[0]);
        $res = $rnm->delete();
        if ($res < 0) {
            Logger::error("Relation between nodes not deleted.");
        }
        else {
            $rnvmv = new \Ximdex\Models\RelNodeVersionMetadataVersion();
            $ids = $rnvmv->find("id", "idrnm=%s", array($id[0]), MONO);
            if (count($ids) > 0) {
                foreach($ids as $id){
                    $rnvmv->set('id', $id);
                    $res2 = $rnvmv->delete();
                    if ($res2 < 0) {
                        Logger::error("Relation between versions not deleted.");
                    }
                }
            }
        }
    }
}