<?php 
class User extends AppModel {
//	public $hasMany='Favorite';
	public $name='User';
	public $recursive = 2;

	public $belongsTo = array(
		'University' => array('className' => 'University')
	);

	public $hasMany = array(
		'Review' => array('className' => 'Review', 'order' => 'Review.category_id'),
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
			'conditions'=>array('User.id'=>$user_id)
		);
		return $this->find('first',$status);
	}

	function login($facebook_id){
		$status=array(
			'conditions'=>array('User.facebook_id'=>$facebook_id)
		);
		$user = $this->find('first',$status);

		if($user){
			// すでに登録したことがあれば
			$this->id = $user['User']['id'];
			$this->save('modified',date('Y-m-d H:i:s'));
			$_SESSION['me'] = $user['User'];

		}else{
			// 初めてのログイン（＝usersにデータがない）ならば
			$_SESSION['me']['image'] = md5(microtime()) . ".jpg";
			$this->create();
			$this->save($_SESSION['me']);
			$_SESSION['me']['id'] = $this->getLastInsertID();

			// facebook写真を保存
			$data = file_get_contents('http://graph.facebook.com/'.$facebook_id.'/picture?type=large');
			file_put_contents(WWW_ROOT.'img'.DS."user".DS.$_SESSION['me']['image'], $data);

			header('Location: '.SITE_URL."users/edit?flg=1"); // editページに飛ぶ
			exit;
		}
		return;
	}
}