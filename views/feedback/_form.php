<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Feedback */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="feedback-form">
    <?php $form = ActiveForm::begin(); ?>

    <?php if (Yii::$app->user->identity) {
        echo $form->field($model, 'user_id')->textInput(['readonly' => true, 'value' => Yii::$app->user->identity->username, 'placeholder' => Yii::$app->user->identity->id, 'disabled' => 'disabled']);
        echo $form->field($model, 'user_id')->hiddenInput(['value' => Yii::$app->user->identity->id])->label(false);
    } ?>
    <?php if (!Yii::$app->user->identity) {
        echo $form->field($model, 'user_id')->hiddenInput(['value' => null])->label(false);
    } ?>
    <?= $form->field($model, 'content')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('message', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
