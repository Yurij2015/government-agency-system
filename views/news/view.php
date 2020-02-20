<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\News */

$this->title = $model->newsname;
$this->params['breadcrumbs'][] = ['label' => Yii::t('message', 'News'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="news-view">

    <h1><?= Html::encode($this->title) ?></h1>

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
        ],
    ]) ?>

</div>
