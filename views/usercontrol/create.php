<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Usercontrol */

$this->title = Yii::t('message', 'Create Usercontrol');
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Usercontrols'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usercontrol-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
