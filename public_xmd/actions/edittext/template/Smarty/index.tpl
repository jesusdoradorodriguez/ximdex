{**
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
 *}

<form id="et_form" class="text-editor-form" enctype="multipart/form-data" method="post" action="{$action_url}">
		{include file="actions/components/title_Description.tpl"}
		<fieldset class="buttons-form">
			<hr>
            {button label="Save" type="submit" class="validate btn main_action"}{*message="{t}Are you sure you want to save the changes?{/t}"*}
			{button label="Cancel" type="button" class="btn main_action ui-state-default ui-corner-all button close-button ladda-button" onclick="this.blur();"}
		</fieldset>
	
 <div class="action_content full text-editor">

 	<fieldset class="editor" id="fieldset_{$id_editor}">

 		<input type="hidden" name="nodeid" value="{$id_node}">
 		<input type="hidden" id="publicar" name="publicar" value="0">
 		<input type="hidden" name="node_name" value="{$node_name}">
 		<input type="hidden" class="node_ext" name="node_ext" value="{$ext}">
        <input type="hidden" class="codemirror_url" name="codemirror_url" value="{$codemirror_url}">

 		<textarea class="normal editor_textarea"  name="editor" class="text_editor"  id="editor_{$id_editor}">{$content}</textarea>
 	</fieldset>
 </div>

</form>


