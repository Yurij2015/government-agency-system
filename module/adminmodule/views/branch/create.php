<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\Branch */

$this->title = Yii::t('message', 'Create Branch');
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Branches'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="branch-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
