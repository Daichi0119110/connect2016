<?php 
class Tag extends AppModel {
	public $name='Tag';

	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	// public $hasMany = array(
	// 	'Score' => array('className'=>'Score')
	// );
	
}