<?php

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\Employee */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="employee-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'branch_idbranch')->dropDownList(ArrayHelper::map(\app\models\Branch::find()->all(), 'idbranch', 'name')) ?>


    <?= $form->field($model, 'detail')->textarea(['rows' => 6, 'value' => Yii::$app->getSecurity()->decryptByPassword($model->detail, 'key8888')]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('message', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
