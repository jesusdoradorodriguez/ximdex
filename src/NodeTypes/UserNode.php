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

use Ximdex\Models\User;
use Ximdex\Logger;

class UserNode extends Root
{

	function CreateNode($login = null, $parentID = null, $nodeTypeID = null, $stateID = null, $realName = null, $pass = null, $email = null, $locale = null, $generalRole = null)
	{

		$user = new User();
		$idUser = $user->SetByLogin($login);

		if ($idUser > 0) {
			Logger::error("Another user with the same login $login");
			return NULL;
		}

		$ret = $user->CreateNewUser($realName, $login, $pass, $email, $locale, $generalRole, $this->parent->get('IdNode'));
		$this->UpdatePath();

		return $ret;
	}

	function DeleteNode()
	{
		$user = new User($this->parent->get('IdNode'));
		$user->DeleteUser();
	}
}
 
