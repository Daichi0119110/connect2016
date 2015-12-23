<?php 
App::import('vendor','FacebookLogin'); //FacebookLoginクラスを読み込み
App::import('vendor','Facebook'); //Facebookクラスを読み込み
App::import('Vendor','facebook',array('file' => 'facebook'.DS.'php-sdk-v4'.DS.'src'.DS.'Facebook.php'));
class UsersController extends AppController {
	public $helper = array('HTML', 'form');

	public function user(){

	}

	public function mypage(){

	}

	public function signup(){
		
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