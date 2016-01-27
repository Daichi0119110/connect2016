<?php 
class Category extends AppModel {
	public $name='Category';

	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $hasMany = array(
		'Review' => array('className'=>'Review')
	);

	public function getcategory($id){
		$status=array(
			'conditions'=>array('Category.id'=>$id),
		);
		return $this->find('first',$status)['Category'];
	}
}