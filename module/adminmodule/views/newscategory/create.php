<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\Newscategory */

$this->title = Yii::t('message', 'Create Newscategory');
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Newscategories'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="newscategory-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
