<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\Newscategory */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'Newscategories'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="newscategory-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('message', 'Update'), ['update', 'id' => $model->idnewscategory], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('message', 'Delete'), ['delete', 'id' => $model->idnewscategory], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('message', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'idnewscategory',
            'name',
            'description',
        ],
    ]) ?>

</div>
