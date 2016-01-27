<?php 

// Facebook関連の読み込み
App::import('vendor','FacebookLogin'); //FacebookLoginクラスを読み込み
App::import('vendor','Facebook'); //Facebookクラスを読み込み
App::import('Vendor','facebook',array('file' => 'facebook'.DS.'php-sdk-v4'.DS.'src'.DS.'Facebook.php'));


class UsersController extends AppController {
	public $helper = array('HTML', 'form');
	public $components = array('Session');
	public $uses = array("User","Category","Question","Tag","Score","Review");

	public function user(){
		$this->set('title',"User | Connect");
	}

	public function mypage(){
		$this->set('title',"Mypage | Connect");

		// ログインしていなければ、ログインページへ
		if(!$_SESSION['me']){
			$this->redirect(array('controller'=>'users', 'action'=>'login'));
		}

		// postならDBへ保存
		if($this->request->is('post')) {
			$data_user = array(
				"id" => $_SESSION['me']['id'],
				"name" => $_POST['name'],
				"gender" => $_POST['gender'],
				"self_intro" => $_POST['self_intro'],
				"study_start" => $_POST['study_start'],
				"study_end" => $_POST['study_end'],
				"study_grade" => $_POST['study_grade'],
				"study_major" => $_POST['study_major']
			);
			$this->User->save($data_user);

			// for ($i=1; $i<count($_POST);$i++) {
			// 	if($_POST['review-id-'.$i]) {
			// 		$review_id = $_POST['review-id-'.$i];
			// 	}
			// 	$this->Review->save($data_user);
			// }
		}

		$user = $this->User->getuser($_SESSION['me']['id']);
		$tags = $this->Tag->find('all');
		$total = 0;

		for ($i=0; $i < count($tags); $i++) {
			$scores[$i] = $tags[$i]['Tag'];
			$scores[$i]['score'] = $this->Score->getscore($user['User']['id'],$tags[$i]['Tag']['id']);
			$total = $total + $scores[$i]['score'];
		}

		for ($i=0; $i < count($user['Review']); $i++) { 
			$user['Review'][$i]['Category'] = $this->Category->getcategory($user['Review'][$i]['category_id']);
		}

		for ($i=0; $i < count($user['Answer']); $i++) { 
			$user['Answer'][$i]['Question'] = $this->Question->getquestion($user['Answer'][$i]['question_id']);
			$user['Answer'][$i]['Question']['user'] = $this->User->getuser($user['Answer'][$i]['Question']['user_id'])['User'];
		}

		if(!$user['Picture']) {
			$user['Picture'][0]['image'] = "default1.jpg";
			$user['Picture'][1]['image'] = "default2.jpg";
			$user['Picture'][2]['image'] = "default3.jpg";
			$user['Picture'][3]['image'] = "default4.jpg";
			$user['Picture'][4]['image'] = "default5.jpg";
		}

		$this->set('user',$user['User']);
		$this->set('university',$user['University']);
		$this->set('pictures',$user['Picture']);
		$this->set('reports',$user['Report']);
		$this->set('reviews',$user['Review']);
		$this->set('answers',$user['Answer']);		
		$this->set('users',$user);
		$this->set('scores',$scores);
		$this->set('categories',$this->Category->find('all'));
		$this->set('average',$total/count($tags));

		$this->set('post',$_POST);
	}

	public function edit(){
		$this->set('title',"Edit | Connect");

		// ログインしていなければ、ログインページへ
		if(!$_SESSION['me']){
			$this->redirect(array('controller'=>'users', 'action'=>'login'));
		}

		$user = $this->User->getuser($_SESSION['me']['id']);
		$tags = $this->Tag->find('all');

		for ($i=0; $i < count($tags); $i++) {
			$scores[$i] = $tags[$i]['Tag'];
			$scores[$i]['score'] = $this->Score->getscore($user['User']['id'],$tags[$i]['Tag']['id']);
		}

		for ($i=0; $i < count($user['Review']); $i++) { 
			$user['Review'][$i]['Category'] = $this->Category->getcategory($user['Review'][$i]['category_id']);
		}

		for ($i=0; $i < count($user['Answer']); $i++) { 
			$user['Answer'][$i]['Question'] = $this->Question->getquestion($user['Answer'][$i]['question_id']);
			$user['Answer'][$i]['Question']['user'] = $this->User->getuser($user['Answer'][$i]['Question']['user_id'])['User'];
		}

		if(!$user['Picture']) {
			$user['Picture'][0]['image'] = "default1.jpg";
			$user['Picture'][1]['image'] = "default2.jpg";
			$user['Picture'][2]['image'] = "default3.jpg";
			$user['Picture'][3]['image'] = "default4.jpg";
			$user['Picture'][4]['image'] = "default5.jpg";
		}

		$this->set('user',$user['User']);
		$this->set('university',$user['University']);
		$this->set('pictures',$user['Picture']);
		$this->set('reports',$user['Report']);
		$this->set('reviews',$user['Review']);
		$this->set('answers',$user['Answer']);		
		$this->set('users',$user);
		$this->set('scores',$scores);
		$this->set('categories',$this->Category->find('all'));
	}

	public function signup(){
		$this->set('title',"Signup | Connect");
	}

	public function practice(){

	}

	public function login(){	
		$this->autoRender = false;
		$this->autoLayout = false;

		$fbLogin = new MyApp\FacebookLogin();

		try {
			$fbLogin->login();
		} catch (Exception $e) {
			echo $e->getMessage();
			exit;
		}

		if($_SESSION['me']['facebook_id']){
			$this->User->login($_SESSION['me']['facebook_id']);
			header('Location: '.SITE_URL); // lpに戻る
			exit;
		}
	}

	public function logout(){
		$this->autoRender = false;
		$this->autoLayout = false;

		$_SESSION['me'] = array();

		header('Location: '.SITE_URL); // lpに戻る
		exit;
	}
}