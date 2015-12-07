<?php 
class Clip extends AppModel {
	public $name='Clip';
	
	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $belongsTo = array(
		'Answer' => array('className' => 'Answer'),
		'Review' => array('className' => 'Review')
	);
}