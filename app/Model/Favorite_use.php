<?php 
class Favorite_use extends AppModel {
	public $name='Favorite_use';
	
	public $belongsTo = array(
		'User' => array(
			'className'=>'User',
			'ForeignKey'=>'Target'
		)
	);
}