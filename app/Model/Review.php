<?php 
class Review extends AppModel {
	public $name='Review';
	public $recursive = 2;

	public function getreview($id){
		$status=array(
			'conditions'=>array('Review.id'=>$id)
			);
		return $this->find('first',$status);
	}

	public $belongsTo = array(
		'User' => array('className' => 'User'),
		'Category' => array('className' => 'Category')
	);

}