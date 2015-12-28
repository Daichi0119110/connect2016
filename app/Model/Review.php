<?php 
class Review extends AppModel {
	public $name='Review';

	public function getreview($id){
		$status=array(
			'conditions'=>array('id'=>$id)
			);
		return $this->find('first',$status);
	}
}