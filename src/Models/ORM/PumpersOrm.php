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

namespace Ximdex\Models\ORM;

use Ximdex\Data\GenericData;

class PumpersOrm extends GenericData
{
    var $_idField = 'PumperId';
    var $_table = 'Pumpers';
    var $_metaData = array(
        'PumperId' => array('type' => 'int(12)', 'not_null' => 'true', 'auto_increment' => 'true'),
        'IdServer' => array('type' => 'int(12)', 'not_null' => 'true'),
        'State' => array('type' => 'varchar(255)', 'not_null' => 'true'),
        'StartTime' => array('type' => 'int(12)', 'not_null' => 'false'),
        'CheckTime' => array('type' => 'int(12)', 'not_null' => 'false'),
        'ProcessId' => array('type' => 'varchar(255)', 'not_null' => 'true')
    );
    var $PumperId;
    var $IdServer;
    var $State;
    var $StartTime = 0;
    var $CheckTime = 0;
    var $ProcessId;
} 