<?php 
class Score extends AppModel {
//	public $hasMany='Favorite';
	public $name='Score';
	
	public $belongsTo = array(
		'Tag' => array('className' => 'Tag'),
		'User' => array('className' => 'User')
	);
	
}