<?php

namespace Ximdex\Models\ORM;

use Ximdex\Data\GenericData;

class ServersOrm extends GenericData
{
    var $_idField = 'IdServer';
    var $_table = 'Servers';
    var $_metaData = array(
        'IdServer' => array('type' => "int(12)", 'not_null' => 'true', 'auto_increment' => 'true', 'primary_key' => true),
        'IdNode' => array('type' => "int(12)", 'not_null' => 'true'),
        'IdProtocol' => array('type' => "varchar(255)", 'not_null' => 'false'),
        'Login' => array('type' => "varchar(255)", 'not_null' => 'false'),
        'Password' => array('type' => "varchar(255)", 'not_null' => 'false'),
        'Host' => array('type' => "varchar(255)", 'not_null' => 'false'),
        'Port' => array('type' => "int(12)", 'not_null' => 'false'),
        'Url' => array('type' => "blob", 'not_null' => 'false'),
        'InitialDirectory' => array('type' => "blob", 'not_null' => 'false'),
        'OverrideLocalPaths' => array('type' => "int(1)", 'not_null' => 'false'),
        'Enabled' => array('type' => "int(1)", 'not_null' => 'false'),
        'Previsual' => array('type' => "int(1)", 'not_null' => 'false'),
        'Description' => array('type' => "varchar(255)", 'not_null' => 'false'),
        'idEncode' => array('type' => "varchar(255)", 'not_null' => 'false'),
        'ActiveForPumping' => array('type' => "tinyint(3)", 'not_null' => 'false'),
        'Token' => array('type' => "varchar(255)", 'not_null' => 'false')
    );
    var $_uniqueConstraints = array();
    var $_indexes = array('IdServer');
    var $IdServer;
    var $IdNode = 0;
    var $IdProtocol;
    var $Login;
    var $Password;
    var $Host;
    var $Port;
    var $Url;
    var $InitialDirectory;
    var $OverrideLocalPaths = 0;
    var $Enabled = 1;
    var $Previsual = 0;
    var $Description;
    var $idEncode;
    var $ActiveForPumping = 1;
    var $Token;
}