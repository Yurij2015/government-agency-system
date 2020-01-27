<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\News */

$this->title = Yii::t('message', 'Update News: {name}', [
    'name' => $model->idnews,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'News'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idnews, 'url' => ['view', 'id' => $model->idnews]];
$this->params['breadcrumbs'][] = Yii::t('message', 'Update');
?>
<div class="news-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
