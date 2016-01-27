<?php 

// Facebook関連の読み込み
App::import('vendor','FacebookLogin'); //FacebookLoginクラスを読み込み
App::import('vendor','Facebook'); //Facebookクラスを読み込み
App::import('Vendor','facebook',array('file' => 'facebook'.DS.'php-sdk-v4'.DS.'src'.DS.'Facebook.php'));


class UsersController extends AppController {
	public $helper = array('HTML', 'form');
	public $components = array('Session');
	public $uses = array("User","Category","Question");

	public function user(){
		$this->set('title',"User | Connect");
	}

	public function mypage(){
		$this->set('title',"Mypage | Connect");

		// ログインしていなければ、ログインページへ
		if(!$_SESSION['me']){
			$this->redirect(array('controller'=>'users', 'action'=>'login'));
		}

		$user = $this->User->getuser($_SESSION['me']['id']);
	}

	public function edit(){
		$this->set('title',"Edit | Connect");

		// ログインしていなければ、ログインページへ
		if(!$_SESSION['me']){
			$this->redirect(array('controller'=>'users', 'action'=>'login'));
		}

		$user = $this->User->getuser($_SESSION['me']['id']);

		for ($i=0; $i < count($user['Review']); $i++) { 
			$user['Review'][$i]['Category'] = $this->Category->getcategory($user['Review'][$i]['category_id']);
		}

		for ($i=0; $i < count($user['Answer']); $i++) { 
			$user['Answer'][$i]['Question'] = $this->Question->getquestion($user['Answer'][$i]['question_id']);
			$user['Answer'][$i]['Question']['user'] = $this->User->getuser($user['Answer'][$i]['Question']['user_id'])['User'];
		}

		$this->set('user',$user['User']);
		$this->set('university',$user['University']);
		$this->set('pictures',$user['Picture']);
		$this->set('reports',$user['Report']);
		$this->set('reviews',$user['Review']);
		$this->set('answers',$user['Answer']);		
		$this->set('users',$user);
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