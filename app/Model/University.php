<?php 
class University extends AppModel {
	public $name='University';

	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $belongsTo = array(
		'Country' => array('className' => 'Country')
	);

	public $hasMany = array(
		'User' => array('className' => 'User'),
		'Review' => array('className' => 'Review'),
		'Score' => array('className' => 'Score'),
		'Picture' => array('className' => 'Picture'),
		'Report' => array('className' => 'Report'),
		'Question' => array('className' => 'Question')
	);
	
	function getuniversity($id){
		$status=array(
			'conditions'=>array('University.id'=>$id)
		);
		return $this->find('first',$status);
	}
	
}