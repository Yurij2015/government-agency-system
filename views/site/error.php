<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */

/* @var $exception Exception */

use yii\helpers\Html;

$this->title = $name;
?>
<div class="site-error">
    <h1><?= Html::encode($this->title) ?></h1>
    <div class="alert alert-danger">
        <?= nl2br(Html::encode($message)) ?>
    </div>
    <p>
        У вас нет доступа к странице.
        <!--        The above error occurred while the Web server was processing your request.-->
    </p>
    <p>
        Свяжитесь с нами, если считаете, что это ошибка на сервере!
        <!--        Please contact us if you think this is a server error. Thank you.-->
    </p>

</div>
