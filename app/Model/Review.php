<?php 
class Review extends AppModel {
	public $name='Review';
	
	public $belongsTo = array(
		'Score' => array('className'=>'Score')
	);
	
}