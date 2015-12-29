<?php 
class PictureUni extends AppModel {
//	public $hasMany='Favorite';
	public $name='PictureUni';
	
	public $belongsTo = array(
		'User' => array('className' => 'User')
	);
}