<?php
 
namespace MyApp;
 
class FacebookLogin {
  private $_fb;
 
  public function __construct() {
    $this->_fb = new \Facebook\Facebook([
      'app_id' => APP_ID,
      'app_secret' => APP_SECRET,
      'default_graph_version' => APP_VERSION,
    ]);
  }
 
  public function login() {
    $helper = $this->_fb->getRedirectLoginHelper();
 
 
    $loginUrl = $helper->getLoginUrl('http://localhost/connect2016/users/login');
    header('Location: ' . $loginUrl);
    exit;
  }
}