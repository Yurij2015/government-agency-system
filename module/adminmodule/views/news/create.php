<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\News */

$this->title = Yii::t('message', 'Create News');
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'News'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="news-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
