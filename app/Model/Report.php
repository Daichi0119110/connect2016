<?php 
class Report extends AppModel {
	public $name='Report';

	public $belongsTo = array(
		'User' => array('className' => 'User')
	);
}