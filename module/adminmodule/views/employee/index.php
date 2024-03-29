<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\module\adminmodule\models\SearchEmployee */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('message', 'Employees');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="employee-index">
    <p>
        <?= Html::a(Yii::t('message', 'Create Employee'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'idemployee',
            'name',
            'phone',
//            'branch_idbranch',
            'branchIdbranch.name',
            [
                'attribute' => 'detail',
                'value' => function ($data) {
                    return Yii::$app->getSecurity()->decryptByPassword($data->detail, 'key8888');
                },
            ],
//            'detail:ntext',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
