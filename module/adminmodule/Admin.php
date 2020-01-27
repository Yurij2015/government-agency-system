<?php

namespace app\module\adminmodule;

use yii\base\Module;

/**
 * admin module definition class
 */
class Admin extends Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'app\module\adminmodule\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();

        // custom initialization code goes here
    }
}
