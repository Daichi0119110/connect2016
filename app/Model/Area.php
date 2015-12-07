<?php 
class Area extends AppModel {
//	public $hasMany='Favorite';
	public $name='Area';

	public $hasMany = array(
		'Country' => array(
			'className' => 'Country',
		)
	);
}