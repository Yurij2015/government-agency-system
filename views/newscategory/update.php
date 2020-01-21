<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Newscategory */

$this->title = Yii::t('message', 'Update Newscategory: {name}', [
    'name' => $model->name,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Newscategories'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->idnewscategory]];
$this->params['breadcrumbs'][] = Yii::t('message', 'Update');
?>
<div class="newscategory-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
