<?php 
class Question extends AppModel {
//	public $hasMany='Favorite';
	public $name='Question';
	
	public $hasMany = array(
		'Answer' => array('className' => 'Answer')
	);

	public $belongsTo = array(
		'User' => array('className'=>'User')
	);
}