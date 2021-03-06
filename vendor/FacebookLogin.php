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
 
    // get access token
    try {
      $accessToken = $helper->getAccessToken();
    } catch (\Facebook\Exception\FacebookResponseException $e) {
      echo 'Response Error: ' . $e->getMessage();
      exit;
    } catch (\Facebook\Exception\FacebookSDKException $e) {
      echo 'SDK Error: ' . $e->getMessage();
      exit;
    }
 
    if (isset($accessToken)) {
      // save user
      var_dump($accessToken);
    } elseif ($helper->getError()) {
      header('Location: http://localhost/connect2016/users/practice');
    } else {
      $loginUrl = $helper->getLoginUrl("http://localhost/connect2016/users/login");
      header('Location: ' . $loginUrl);
    }

    exit;
  }

  private function _save($accessToken) {
    // get user info
    $fb = new Facebook($accessToken);
    $userNode = $fb->getUserNode();
 
    // save user
 
    // login
 
  }

}