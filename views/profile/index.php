<?php

use yii\db\Query;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\User */

$this->title = Yii::t('message', 'TITLE_PROFILE');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-profile">
    <h1><?= Html::encode($this->title) ?></h1>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'username',
            'email',
        ],
    ]) ?>
    <h3>История обращений в организацию:</h3>
    <?php
    $rows = (new Query())
        ->select(['content', 'answer'])
        ->from('feedback')
        ->where(['user_id' => Yii::$app->user->identity->id])
        ->limit(10);
    $i = 1;
    foreach ($rows->each() as $users) {
        echo "<p>" . $i . ". " . $users['content'] . "<br>";
        echo "<span style='color: red; font-weight: bold'>Ответ:</span>" . " " . $users['answer'] . "</p><br>";
        $i++;
    }
    ?>
</div>
