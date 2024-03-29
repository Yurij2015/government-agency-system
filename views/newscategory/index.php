<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\NewscategorySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('message', 'Newscategories');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="newscategory-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'idnewscategory',
            'name',
            'description',

            ['class' => 'yii\grid\ActionColumn', 'template' => '{view}'],
        ],
    ]); ?>


</div>
