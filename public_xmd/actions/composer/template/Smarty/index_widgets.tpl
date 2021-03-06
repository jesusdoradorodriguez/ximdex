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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title> {$versionname} </title>
		{* constant css includes *}
		<link type="text/css" href="{url}/assets/style/main_extended.css{/url}" rel="stylesheet" />

		<link id="main_css" type="text/css" href="{url}/assets/style/jquery/{$theme}/jquery-ui-1.8.2.custom.css{/url}" rel="stylesheet" />

		{* css widgets *}
		%=css_widgets%

		{* constant js includes *}
	<script type="text/javascript" src="{EXTENSIONS::Jquery(true)}"></script>
	<script type="text/javascript" src="{EXTENSIONS::Jquery_ui(true)}"></script>
	<script type="text/javascript" src="{url}/assets/js/helpers.js{/url}"></script>
        <script type="text/javascript" src="{url}/vendors/jquery/plugins/jquery-validate/jquery.validate.js"{/url}></script>
        <script type="text/javascript" src="{url}/vendors/jquery/plugins/jquery-validate/localization/messages_{$user_locale.Lang}.js{/url}"></script>
        <script type="text/javascript" src="{url}/actions/composer/resources/js/widgets_controllers/default.js{/url}"></script>
        <script type="text/javascript" src="{url}/assets/js/helper/query_manager.js{/url}"></script>
	<script type="text/javascript" src="{url}/assets/js/collection.class.js"{/url}></script>
		{* js widgets *}
		%=js_widgets%
	</head>

	<body>
		<menubar id="menu" />
		<div id="header ui-widget ui-widget-header">
			<div id="actions">
				<buttonbar id="action_buttons" />
				<div id="action_info">
					<label for="action_name">{t}Action{/t}: </label><input type="text" readonly="true" id="action_name" />
					<label for="node_path">{t}Selection{/t}: </label><input type="text" readonly="true" id="node_path" />
					<label for="theme_selector">{t}Theme selector{/t}</label>
					<select id="theme_selector" onchange="change_theme(this)">
						<option value="custom_theme"{if ($theme == 'custom_theme')} selected="selected"{/if}>{t}Relaxing blue{/t}</option>
						<option value="ximdex_theme"{if ($theme == 'ximdex_theme')} selected="selected"{/if}>{t}Ximdex{/t}</option>
						<option value="smoothness"{if ($theme == 'smoothness')} selected="selected"{/if}>{t}Smooth{/t}</option>
					</select>
				</div>
			</div>
		</div>
		<div id="body" >
			<treeview id="tree" paginatorShow="yes" />
			<tabs id="tabs" selector_class="tab_selector" scroller_class="tab_scroller" />
		</div>
		<div id="footer">
			<statusbar id="status_bar" />
		</div>
		<div id="dialog"></div>
	</body>
</html>
