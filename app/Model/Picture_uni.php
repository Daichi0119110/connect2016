<?php 
class Picture_uni extends AppModel {
//	public $hasMany='Favorite';
	public $name='Picture_uni';
	
	public $belongsTo = array(
		'User' => array('className' => 'User')
	);
}