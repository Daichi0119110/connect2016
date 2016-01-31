<?php

if (!defined('DS')) {
	define('DS', DIRECTORY_SEPARATOR);
}

session_start();

// ドメイン
define('SITE_URL','http://localhost/connect2016/');
// define('SITE_URL','http://k0hei.science/connect2016/');

// facebook情報
// define('APP_ID','540947999389389');
// define('APP_SECRET','d03780bccce3372486177f508172d4b0');
define('APP_VERSION','v2.5');

// facebook情報（テスト用）
define('APP_ID','555487634602092');
define('APP_SECRET','ff4488de863e0205561b2670dd1f0309');



require_once('../Vendor/autoload.php');

if (!defined('ROOT')) {
	define('ROOT', dirname(dirname(dirname(__FILE__))));
}

if (!defined('APP_DIR')) {
	define('APP_DIR', basename(dirname(dirname(__FILE__))));
}

$vendorPath = ROOT . DS . APP_DIR . DS . 'Vendor' . DS . 'cakephp' . DS . 'cakephp' . DS . 'lib';
$dispatcher = 'Cake' . DS . 'Console' . DS . 'ShellDispatcher.php';
if (!defined('CAKE_CORE_INCLUDE_PATH') && file_exists($vendorPath . DS . $dispatcher)) {
	define('CAKE_CORE_INCLUDE_PATH', $vendorPath);
}

if (!defined('WEBROOT_DIR')) {
	define('WEBROOT_DIR', basename(dirname(__FILE__)));
}
if (!defined('WWW_ROOT')) {
	define('WWW_ROOT', dirname(__FILE__) . DS);
}

// for built-in server
if (PHP_SAPI === 'cli-server') {
	if ($_SERVER['REQUEST_URI'] !== '/' && file_exists(WWW_ROOT . $_SERVER['PHP_SELF'])) {
		return false;
	}
	$_SERVER['PHP_SELF'] = '/' . basename(__FILE__);
}

if (!defined('CAKE_CORE_INCLUDE_PATH')) {
	if (function_exists('ini_set')) {
		ini_set('include_path', ROOT . DS . 'lib' . PATH_SEPARATOR . ini_get('include_path'));
	}
	if (!include 'Cake' . DS . 'bootstrap.php') {
		$failed = true;
	}
} else {
	if (!include CAKE_CORE_INCLUDE_PATH . DS . 'Cake' . DS . 'bootstrap.php') {
		$failed = true;
	}
}
if (!empty($failed)) {
	trigger_error("CakePHP core could not be found. Check the value of CAKE_CORE_INCLUDE_PATH in APP/webroot/index.php. It should point to the directory containing your " . DS . "cake core directory and your " . DS . "vendors root directory.", E_USER_ERROR);
}

App::uses('Dispatcher', 'Routing');

$Dispatcher = new Dispatcher();
$Dispatcher->dispatch(
	new CakeRequest(),
	new CakeResponse()
);
