<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\adminmodule\models\News */

$this->title = $model->newsname;
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'News'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="news-view">
    <p>
        <?= Html::a(Yii::t('message', 'Update'), ['update', 'id' => $model->idnews], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('message', 'Delete'), ['delete', 'id' => $model->idnews], [
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
//            'idnews',
            'newsname',
            'content:ntext',
//            'created_at',
//            'updated_at',
//            'updated_by',
//            'created_by',
                'newscategoryIdnewscategory.name',
//            'newscategory_idnewscategory',
        ],
    ]) ?>

</div>
