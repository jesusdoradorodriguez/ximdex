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
 * @author Ximdex DevTeam <dev@ximdex.com>
 * @version $Revision$
 */


use Ximdex\Logger;
use Ximdex\Models\Channel;
use Ximdex\Models\Node;
use Ximdex\Models\Version;
use Ximdex\Runtime\App;

ModulesManager::file('/xslt/functions.php', 'dexT');
ModulesManager::file('/inc/repository/nodeviews/Abstract_View.class.php');
ModulesManager::file('/inc/repository/nodeviews/Interface_View.class.php');
ModulesManager::file('/inc/nodetypes/xsltnode.php');

class View_Xslt extends Abstract_View
{
    private $_node;
    private $_idSection;
    private $_idChannel;
    private $_idProject;
    
    public function transform($idVersion = NULL, $pointer = NULL, $args = NULL)
    {


        $content = $this->retrieveContent($pointer);
        if (!$this->_setNode($idVersion))
            return NULL;

        if (!$this->_setIdChannel($args))
            return NULL;

        if (!$this->_setIdSection($args))
            return NULL;

        if (!$this->_setIdProject($args))
            return NULL;


        $ptdFolder = App::getValue("TemplatesDirName");

        $section = new Node($this->_idSection);
        $sectionPath = $section->class->GetNodePath();

        $docxap = $sectionPath . '/' . $ptdFolder . '/docxap.xsl';

        // Only make transformation if channel's render mode is ximdex (or null)

        if ($this->_idChannel) {
            $channel = new Channel($this->_idChannel);
            $renderMode = $channel->get('RenderMode');

            if ($renderMode == 'client') {
                $inclusionHeader = '<?xml-stylesheet type="text/xsl" href="' . $ptdFolder . '/docxap.xsl"?>';
                $xmlHeader = App::getValue('EncodingTag');
                $content = str_replace($xmlHeader, $xmlHeader . $inclusionHeader, $content);

                Logger::info('Render in client, return XML content + path to template');
                return $content;
            }

            /*			if (is_object($this->_node)) {

                            Logger::info("obteniendo propiedad otf para id ".$this->_node->get('IdNode'));
                            $isOTF = $this->_node->getSimpleBooleanProperty('otf');

                            if ($isOTF) {
                                Logger::info('Render in server, return XML content');
                                return $content;
                            }
                        }
            */
        }

        // XSLT Transformation

        Logger::info('Starting xslt transformation');
        if (!file_exists($docxap))
        {
            $project = new Node($this->_idProject);
            $nodeProjectPath = $project->class->GetNodePath();

            $docxap = $nodeProjectPath . '/' . $ptdFolder . '/docxap.xsl';
            
            if (!file_exists($docxap))
            {
                $error = "File $docxap does not exists in project templates folder";
                if (isset($GLOBALS['InBatchProcess']))
                    Logger::error($error);
                else
                    $GLOBALS['errorInXslTransformation'] = $error;
                return false;
            }
            
            //load de docxap NodeId corresponding to the project docxap.xsl file
            $docxapPath = $project->GetPath() . '/' . $ptdFolder;
            $idDocxapNode = $project->GetByNameAndPath('docxap.xsl', $docxapPath);
        }
        else
        {
            //load de docxap NodeId corresponding to the content of the section docxap.xsl file
            $docxapPath = $section->GetPath() . '/' . $ptdFolder;
            $idDocxapNode = $section->GetByNameAndPath('docxap.xsl', $docxapPath);
        }
        //check if the docxap NodeId is ok
        if (!$idDocxapNode)
        {
            $error = "Can't load the NodeID for the docxap file: $docxap";
            if (isset($GLOBALS['InBatchProcess']))
                Logger::error($error);
            else
                $GLOBALS['errorInXslTransformation'] = $error;
            return false;
        }
        
        //load the docxap node
        $idDocxapNode = $idDocxapNode[0]['IdNode'];
        $docxapNode = new Node($idDocxapNode);
        if (!$docxapNode)
        {
            $error = "Can't load the node for the docxap file: $docxap";
            if (isset($GLOBALS['InBatchProcess']))
                Logger::error($error);
            else
                $GLOBALS['errorInXslTransformation'] = $error;
            return false;
        }

        $xsltHandler = new \Ximdex\XML\XSLT();
        if (!$xsltHandler->setXML($pointer))
        {
            $error = \Ximdex\Error::error_message();
            if ($error)
                $error = str_replace('DOMDocument::load(): ', '', $error);
            if (isset($GLOBALS['InBatchProcess']))
                Logger::error('The XML document has syntax errors in file: ' . $pointer . '(' . $error . ')');
            else
                $GLOBALS['errorInXslTransformation'] = 'The XML document has syntax errors: (' . $error . ')';
            return false;
        }
        
        //include and remove the duplicate templates in the docxap content
        $domDoc = new DOMDocument();
        $domDoc->formatOutput = true;
        $domDoc->preserveWhiteSpace = false;
        if (@$domDoc->load($docxap) === false)
        {
            $error = \Ximdex\Error::error_message();
            if ($error)
                $error = str_replace('DOMDocument::load(): ', '', $error);
            if (isset($GLOBALS['InBatchProcess']))
                Logger::error('The XSL document has syntax errors in file: ' . $docxap . '(' . $error . ')');
            else
                $GLOBALS['errorInXslTransformation'] = 'The XSL document has syntax errors in file: ' . $docxap . ' (' . $error . ')';
            return false;
        }
        $docxapContent = $domDoc->saveXML();
        $xsltNode = new xsltnode($docxapNode);
        $res = $xsltNode->include_unique_templates($docxapContent, $docxapNode);
        if ($res === false)
        {
            if (!isset($GLOBALS['InBatchProcess']) and isset($xsltNode->messages->messages[0]))
                $GLOBALS['errorInXslTransformation'] = $xsltNode->messages->messages[0];
            return false;
        }
        
        if ($xsltHandler->setXSL(null, $res) === false)
            return false;
        $params = array('xmlcontent' => $content);
        foreach ($params as $param => $value) {
            $xsltHandler->setParameter(array($param => $value));
        }

        $content = $xsltHandler->process();
        if (empty($content)) {
            
            $error = \Ximdex\Error::error_message();
            if ($error)
                $error = str_replace('XSLTProcessor::transformToXml(): ', '', $error);
            $error = 'Error in XSLT process for ' . $docxap . ' (' . $error . ')';
            if (isset($GLOBALS['InBatchProcess']))
            {
                Logger::error($error);
                return NULL;
            }
            $GLOBALS['errorInXslTransformation'] = $error;
            return false;
        }

        // Tags counter

        $counter = 1;
        
        $domDoc->validateOnParse = true;

        if ($channel->get("OutputType") == "xml") {
            if (!@$domDoc->loadXML($content)) {
                Logger::error($content);
                Logger::error('XML invalid');
                $GLOBALS['errorInXslTransformation'] = 'Invalid XML source';
                return false;
            }
        } else if ($channel->get("OutputType") == "web") {
            if (!@$domDoc->loadHTML($content)) {
                Logger::error('HTML invalid');
                $GLOBALS['errorInXslTransformation'] = 'Invalid HTML or XHTML source';
                return false;
            }
        } else {
            return $this->storeTmpContent($content);
        }
        $xpath = new DOMXPath($domDoc);

        $nodeList = $xpath->query('/html/body//*[string(text())]');

        // In non-node transform we've not got a nodeid, and it's not necessary for tag counting.
        foreach ($nodeList as $element) {
            $element->setAttributeNode(new DOMAttr('uid', (($this->_node) ? $this->_node->get('IdNode') : '00000') . ".$counter"));
            $counter++;
        }

        if ($channel->get("OutputType") == "xml")
            $content = $domDoc->saveXML();
        else if ($channel->get("OutputType") == "web")
            $content = $domDoc->saveHTML();

        return $this->storeTmpContent($content);
    }

    private function _setNode($idVersion = NULL)
    {

        if (!is_null($idVersion)) {
            $version = new Version($idVersion);
            if (!($version->get('IdVersion') > 0)) {
                Logger::error('VIEW XSLT: Incorrect version has been loaded (' . $idVersion . ')');
                return NULL;
            }

            $this->_node = new Node($version->get('IdNode'));
            if (!($this->_node->get('IdNode') > 0)) {
                Logger::error('VIEW XSLT: The node that it\'s trying to convert doesn\'t exists: ' . $version->get('IdNode'));
                return NULL;
            }
        } else {
            Logger::info("VIEW XSLT: xslt view is instantiate without 'idVersion'");
        }

        return true;
    }

    private function _setIdChannel($args = array())
    {

        if (array_key_exists('CHANNEL', $args)) {
            $this->_idChannel = $args['CHANNEL'];
        }

        // Check Params:
        if (!isset($this->_idChannel) || !($this->_idChannel > 0)) {
            Logger::error('VIEW XSLT: Node ' . $args['NODENAME'] . ' has not an associated channel');
            return NULL;
        }

        return true;
    }

    private function _setIdSection($args = array())
    {

        if ($this->_node) {
            $this->_idSection = $this->_node->GetSection();
        } else {
            if (array_key_exists('SECTION', $args)) {
                $this->_idSection = $args['SECTION'];
            }

            // Check Params:
            if (!isset($this->_idSection) || !($this->_idSection > 0)) {
                Logger::error('VIEW XSLT: There is not associated section for the node ' . $args['NODENAME']);
                return NULL;
            }
        }

        return true;
    }

    private function _setIdProject($args = array())
    {

        if ($this->_node) {
            $this->_idProject = $this->_node->GetProject();
        } else {
            if (array_key_exists('PROJECT', $args)) {
                $this->_idProject = $args['PROJECT'];
            }

            // Check Params:
            if (!isset($this->_idProject) || !($this->_idProject > 0)) {
                Logger::error('VIEW XSLT: There is not associated project for the node ' . $args['NODENAME']);
                return NULL;
            }
        }

        return true;
    }

}