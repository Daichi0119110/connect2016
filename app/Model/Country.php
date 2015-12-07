<?php 
class Country extends AppModel {
//	public $hasMany='Favorite';
	public $name='Country';

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