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
?>

<form method="post" action=".">
    <input type="hidden" name="method" value="<?php echo $goMethod ?>">
	<h2>Settings</h2>
	<div class="form_item  form_item--user full-width">
	<label for="">User</label>
	<span class="user">ximdex</span></div>
	<div class="form_item">
		<label for="password">Password</label>
		<input type="password" name="pass" id="password" placeholder="Insert a new database password here" />
	</div>
	<div class="form_item">
		<label for="language">Language</label>
		<select name="language" id="language">
			<option value="es_ES">Spanish</option>
			<option value="en_US">English</option>
			<option value="de_DE">German</option>
			<option value="pt_BR">Portuguese</option>
		</select>
	</div>
	<div class="form_item full-width form_item--information">
		<label for="anonymous_information"><input type="checkbox" id="anonymous_information" value="1" name="anonymous_information" />Would you like to help us sending anonymous information about usage </label>
		
	</div>

	<button class=" action_launcher ladda-button">Set general settings</button>
</form>