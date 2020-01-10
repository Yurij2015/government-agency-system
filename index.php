<?php
/**
 * Project: government-agency-system
 * Filename: index.php
 * Date: 1/10/2020
 * Time: 12:08 AM
 */

use Twig\Environment;
use Twig\Loader\ArrayLoader;

require_once 'vendor/autoload.php';

$loader = new ArrayLoader([
    'index' => 'Hello {{ name }}!',
]);
$twig = new Environment($loader);

echo $twig->render('index', ['name' => 'Fabien']);

echo "I";