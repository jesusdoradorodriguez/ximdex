<?php

use Ximdex\Models\Node;
use Ximdex\MVC\ActionAbstract;
use Ximdex\Runtime\App;

class Action_xEdit extends ActionAbstract
{
    function index()
    {
        $id = $this->request->getParam('nodeid');
        $node = new Node($id);
        if (!$node->GetID()) {
            $this->messages->add(_('Requested document does not exist') . ' (ID: ' . $id . ')', MSG_TYPE_ERROR);
            $this->renderMessages();
            return false;
        }
        $type = $this->request->getParam('type');
        $values = array(
            'type' => $type,
            'id' => $id,
            'url' => App::GetValue('HTMLEditorURL'),
            'enabled' => App::GetValue('HTMLEditorEnabled')
        );
        $this->addCss('/actions/xEdit/resources/css/iframe.css');
        $this->render($values, NULL, 'default-3.0.tpl');
    }
}