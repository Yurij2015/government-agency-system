<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\module\adminmodule\models\NewsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('message', 'News');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="news-index">

    <p>
        <?= Html::a(Yii::t('message', 'Create News'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'idnews',
            'newsname',
            'content:ntext',
//            'created_at',
//            'updated_at',
            //'updated_by',
            //'created_by',
            //'newscategory_idnewscategory',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
