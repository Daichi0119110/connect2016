<?php
	Router::connect('/', array('controller' => 'pages', 'action' => 'lp'));
	Router::connect('/pdf/:filename', array('controller' => 'reports', 'action' => 'show')); // pdf表示のURL

	CakePlugin::routes();

	require CAKE . 'Config' . DS . 'routes.php';
