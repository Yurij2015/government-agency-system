<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Newscategory */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Newscategories'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="newscategory-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
//            'idnewscategory',
            'name',
            'description',
        ],
    ]) ?>

</div>
