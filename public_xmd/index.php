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

use Ximdex\MVC\FrontController;



include_once '../bootstrap.php';


// FROM MVC
if (!defined('RENDERER_ROOT_PATH')) {
    define('RENDERER_ROOT_PATH', XIMDEX_ROOT_PATH . '/inc/mvc/renderers');
}
if (!defined('SMARTY_TMP_PATH')) {
    define('SMARTY_TMP_PATH', XIMDEX_ROOT_PATH . App::getValue('TempRoot'));
}


//General class
ModulesManager::file('/inc/io/BaseIO.class.php');
ModulesManager::file('/inc/i18n/I18N.class.php');
ModulesManager::file('/inc/mvc/App.class.php');
ModulesManager::file('/inc/install/InstallController.class.php');

App::dispatchEvent(\Ximdex\Events::XIMDEX_START);


//Main thread
if (!InstallController::isInstalled()) {
    $installController = new InstallController();
    $installController->dispatch();
} else {
    $locale = \Ximdex\Utils\Session::get('locale');
    I18N::setup($locale); // Check coherence with HTTP_ACCEPT_LANGUAGE
    $frontController = new FrontController();
    $frontController->dispatch();
}