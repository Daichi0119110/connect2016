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

	public function getquestion($id){
		$status=array(
			'conditions'=>array('Question.id'=>$id),
		);
		return $this->find('first',$status)['Question'];
	}
}