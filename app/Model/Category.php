<?php 
class Category extends AppModel {
	public $name='Category';

	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $hasMany = array(
		'Review' => array('className'=>'Review')
	);
}