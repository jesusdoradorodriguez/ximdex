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

namespace Ximdex\NodeTypes;

use Ximdex\Models\Channel;
use Ximdex\Models\NodeProperty;

/**
 * @brief Handles channels.
 *
 *  Channels are responsible of the document transformation to different output formats (html, text, ...).
 */
class ChannelNode extends Root
{   
	/**
	 *  Does nothing.
	 * @return null
	 */
	function RenderizeNode()
	{
		return null;
	}

	/**
	 * Calls to method for creating a Channel
	 * 
	 * @param string name
	 * @param int parentID
	 * @param int nodeTypeID
	 * @param int stateID
	 * @param string channelName
	 * @param string extension
	 * @param string format
	 * @param string description
	 * @param string filter
	 * @param string renderMode
	 */
	function CreateNode($name = null, $parentID = null, $nodeTypeID = null, $stateID = null, $channelName = null, $extension = null
	    , $format = null, $description = null, $filter = "", $renderMode = NULL, $outputType = NULL, $renderType = null, $language = null)
	{
		$channel = new Channel();
		$channel->CreateNewChannel($channelName, $extension, $format, $description, $this->parent->get('IdNode'), $filter,
			 $renderMode, $outputType, $renderType, $language);
		$this->UpdatePath();
	}

	/**
	 *  Deletes the rows of the Channel from both tables Channels and NodeProperties.
	 */
	function DeleteNode()
	{
		$channel = new Channel($this->nodeID);
		$channel->DeleteChannel();
		$nodeProperty = new NodeProperty();
		$nodeProperty->cleanUpPropertyValue('channel', $this->parent->get('IdNode'));
	}

	/**
	 * Gets all documents that will be transformed by the Channel.
	 * @return array
	 */
	public function GetDependencies()
	{
	    return [];
	}
}