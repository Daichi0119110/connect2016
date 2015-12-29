<?php 
class Country extends AppModel {
//	public $hasMany='Favorite';
	public $name='Country';

	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $belongsTo = array(
		'Area' => array(
			'className' => 'Area',
		)
	);

	public $hasMany = array(
		'University' => array('className' => 'University'),
	);
	
	function getcountry($id){
		$status=array(
			'conditions'=>array('id'=>$id)
		);
		return $this->find('first',$status);
	}
}