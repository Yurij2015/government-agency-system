<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\Feedback */

$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Feedbacks'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idfeedback, 'url' => ['view', 'id' => $model->idfeedback]];
$this->params['breadcrumbs'][] = Yii::t('message', 'Update');
?>
<div class="feedback-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
