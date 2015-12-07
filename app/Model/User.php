<?php 
class User extends AppModel {
//	public $hasMany='Favorite';
	public $name='User';

	public $belongsTo = array(
		'University' => array(
			'className' => 'University'
		)
	);

	public $hasMany = array(
		'Review' => array('className' => 'Review'),
		'Score' => array('className' => 'Score'),
		'Picture_uni' => array('className' => 'Picture_uni'),
		'Favorite_uni' => array('className' => 'Favorite_uni'),
		'Favorite_use' => array('className' => 'Favorite_use'),
		'Answer' => array('className' => 'Answer'),
		'Clip' => array('className' => 'Clip')
	);
	
	// 大学に紐付いたユーザーのidを取得
	function getalluser($university_id){
		$status=array(
			'conditions'=>array('university_id'=>$university_id),
			'fields'=>'id'
		);
		return $this->find('all',$status);
	}
}