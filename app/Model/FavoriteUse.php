<?php 
class FavoriteUse extends AppModel {
	public $name='FavoriteUse';
	
	public $belongsTo = array(
		'User' => array(
			'className'=>'User',
			'ForeignKey'=>'Target'
		)
	);
}