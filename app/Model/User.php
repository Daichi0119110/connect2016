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
		'Picture' => array('className' => 'Picture'),
		'Favorite_uni' => array('className' => 'Favorite_uni'),
		'Favorite_use' => array('className' => 'Favorite_use'),
		'Answer' => array('className' => 'Answer'),
		'Report' => array('className' => 'Report'),
		'Clip' => array('className' => 'Clip')
	);

	function getuser($user_id){
		$status=array(
			'conditions'=>array('User.id'=>$user_id),
			'recursive'=>0
		);
		return $this->find('first',$status);
	}

	function login($facebook_id){
		$status=array(
			'conditions'=>array('facebook_id'=>$facebook_id)
		);
		$user = $this->find('first',$status);
		
		if($user){
			// すでに登録したことがあれば
			$this->id = $user['User']['id'];
			$this->save('modified',date('Y-m-d H:i:s'));
			$_SESSION['me']['user_id'] = $user['User']['id'];
			$_SESSION['me']['university_id'] = $user['User']['university_id'];

		}else{
			// 初めてのログイン（＝usersにデータがない）ならば
			$this->save($_SESSION['me']);
			$_SESSION['me']['user_id'] = $this->getLastInsertID();
			$_SESSION['me']['university_id'] = NULL;
		}

		return;
	}
}