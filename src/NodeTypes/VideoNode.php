<?php

/**
 *  \details &copy; 2018  Open Ximdex Evolution SL [http://www.ximdex.org]
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

namespace Ximdex\NodeTypes;

use Ximdex\Runtime\Constants;

/***
 * Class for NodeType Video
 */
class VideoNode extends FileNode
{
    /**
     * Build a new video node file
     * Use parent CreateNode method and generate a new metadata document for the new video node created
     * 
     * @return bool
     */
    function CreateNode($name = null, $parentID = null, $nodeTypeID = null, $stateID = Constants::EDITION_STATUS_ID, $sourcePath = "")
    {
        parent::CreateNode($name, $parentID, $nodeTypeID, $stateID, $sourcePath);
    }
}