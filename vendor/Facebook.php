<?php
 
namespace MyApp;
 
class Facebook {
  private $_fb;
 
  public function __construct($accessToken) {
    $this->_fb = new \Facebook\Facebook([
      'app_id' => APP_ID,
      'app_secret' => APP_SECRET,
      'default_graph_version' => APP_VERSION,
    ]);
    $this->_fb->setDefaultAccessToken($accessToken);
  }
 
  public function getUserNode() {
 
  }
 
}