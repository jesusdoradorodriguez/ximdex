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



namespace Ximdex\Models;




class RelTemplateContainer extends \Ximdex\Data\GenericData{

    var $_idField = 'IdRel';
    var $_table = 'RelTemplateContainer';
    var $_metaData = array(
        'IdRel' => array('type' => "int(12)", 'not_null' => 'true', 'auto_increment' => 'true', 'primary_key' => true),
        'IdTemplate' => array('type' => "int(12)", 'not_null' => 'true'),
        'IdContainer' => array('type' => "int(12)", 'not_null' => 'true')
    );
    var $_uniqueConstraints = array();
    var $_indexes = array('IdRel');
    var $IdRel;
    var $IdTemplate = 0;
    var $IdContainer = 0;

	function getTemplate($idContainer) {

		$template = $this->find('IdTemplate', 'IdContainer = %s', array($idContainer), MULTI);
		
		if (!empty($template)) {
			$last = end($template);
			return $last['IdTemplate'];
		} else {
			return NULL;
		}
	}

	function createRel($idTemplate, $idNode) {

		$this->set('IdRel', NULL);
		$this->set('IdTemplate', $idTemplate);
		$this->set('IdContainer', $idNode);

		if (parent::add()) {
			$idRel = $this->get('IdRel');
		} else {
			return NULL;
		}

		// TODO: NEED TO REFACTOR THIS.
		$container = new Node($idNode);
		$arr_child = $container->GetChildren();

		if (!is_null($arr_child)) {

			foreach ($arr_child as $child) {

				$doc = new StructuredDocument($child);
				$version = $doc->GetLastVersion();
				$dependencies = new Dependencies();
				$dependencies->insertDependence($idTemplate,$child,'PVD',$version);
			}
		}
	}

    function deleteRel($idContainer) {

		$db = new \Ximdex\Runtime\Db();
                $sql = "DELETE FROM RelTemplateContainer Where IdContainer=$idContainer";

                $db->Execute($sql);
        }

	function deleteRelByTemplate($idTemplate) {

		$db = new \Ximdex\Runtime\Db();
		$sql = "DELETE FROM RelTemplateContainer WHERE IdTemplate = $idTemplate";

                $db->Execute($sql);

	}

}