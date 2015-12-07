<?php 
class Answer extends AppModel {
//	public $hasMany='Favorite';
	public $name='Answer';
	
	public $belongsTo = array(
		'Question' => array('className'=>'Question'),
		'User' => array('className'=>'User')
	);
}