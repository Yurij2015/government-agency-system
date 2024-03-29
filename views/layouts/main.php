<?php

/* @var $this \yii\web\View */

/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= $this->title ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => "GovernmentAgency",
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [
            ['label' => 'Отделы', 'url' => ['/branch/index']],
            ['label' => 'Сотрудники', 'url' => ['/employee/index']],
            ['label' => 'Обратная связь', 'url' => ['/feedback/create']],
            ['label' => 'Новости', 'url' => ['/news/index']],
            ['label' => 'Категории', 'url' => ['/newscategory/index']],
            Yii::$app->user->isGuest ? (
            ['label' => 'Войти', 'url' => ['/site/login']]
            ) : (
                '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Выйти (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>'
            ),
            Yii::$app->user->isGuest ? (
            ['label' => 'Регистрация', 'url' => ['/site/signup']]
            ) : (""),
            !Yii::$app->user->isGuest ?
                ['label' => 'Личный кабинет', 'url' => ['/profile/index']] : ""],
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
</body>
<div class="container">
    <p class="pull-left">&copy; Сайт государственного учреждения <?= date('Y') ?></p>
    <p class="pull-right">
        <?= Html::a(Yii::t('message', 'AdminPanel'), ['/admin']) ?>
        GovernmentAgency
    </p>
</div>
</footer>

<?php $this->endBody() ?>
</html>
<?php $this->endPage() ?>
