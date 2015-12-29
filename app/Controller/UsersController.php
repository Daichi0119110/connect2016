<?php 

// Facebook関連の読み込み
App::import('vendor','FacebookLogin'); //FacebookLoginクラスを読み込み
App::import('vendor','Facebook'); //Facebookクラスを読み込み
App::import('Vendor','facebook',array('file' => 'facebook'.DS.'php-sdk-v4'.DS.'src'.DS.'Facebook.php'));


class UsersController extends AppController {
	public $helper = array('HTML', 'form');

	public function user(){
		$this->set('title',"User | Connect");
	}

	public function mypage(){
		$this->set('title',"Mypage | Connect");
	}

	public function edit(){
		$this->set('title',"Edit | Connect");
	}

	public function signup(){
		$this->set('title',"Signup | Connect");
	}

	public function practice(){
		debug($_SESSION['me']);
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

		$this->User->login($_SESSION['me']['facebook_id']);
		header('Location: '.SITE_URL); // lpに戻る
		exit;
	}
}