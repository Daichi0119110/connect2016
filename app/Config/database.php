<?php
class DATABASE_CONFIG {

	// ローカル用
	public $default = array(
		'datasource' => 'Database/Mysql',
		'persistent' => false,
		'host' => 'localhost',
		'login' => 'dbuser',
		'password' => 'connect2016',
		'database' => 'connect',
		'prefix' => '',
		'encoding' => 'utf8',
	);

	// // サーバー用
	// public $default = array(
	// 	'datasource' => 'Database/Mysql',
	// 	'persistent' => false,
	// 	'host' => 'mysql024.phy.lolipop.lan',
	// 	'login' => 'LAA0628410',
	// 	'password' => 'connect2015',
	// 	'database' => 'LAA0628410-connect',
	// 	'prefix' => '',
	// 	'encoding' => 'utf8',
	// );

	public $test = array(
		'datasource' => 'Database/Mysql',
		'persistent' => false,
		'host' => 'localhost',
		'login' => 'user',
		'password' => 'password',
		'database' => 'test_database_name',
		'prefix' => '',
		//'encoding' => 'utf8',
	);
}
