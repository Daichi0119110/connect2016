<?php 
class Area extends AppModel {
//	public $hasMany='Favorite';
	public $name='Area';

	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $hasMany = array(
		'Country' => array(
			'className' => 'Country',
		)
	);
}