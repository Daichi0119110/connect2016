<?php 
class User extends AppModel {
//	public $hasMany='Favorite';
	public $name='User';

	public $belongsTo = array(
		'University' => array('className' => 'University')
	);

	public $hasMany = array(
		'Review' => array('className' => 'Review'),
		'Score' => array('className' => 'Score'),
		'Picture_uni' => array('className' => 'Picture_uni'),
		'Favorite_uni' => array('className' => 'Favorite_uni'),
		'Favorite_use' => array('className' => 'Favorite_use'),
		'Answer' => array('className' => 'Answer'),
		'Report' => array('className' => 'Report'),
		'Clip' => array('className' => 'Clip')
	);

	function getuser($user_id){
		$status=array(
			'conditions'=>array('User.id'=>$user_id)
		);
		return $this->find('first',$status);
	}
}