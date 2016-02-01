<?php

App::uses('AppController', 'Controller');
class PagesController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array('University','Area','Country','Picture');
	
	public function lp() {
		$this->set('title',"Top | Connect");
		$areas = $this->Area->find('all');

		// スマホかPCを判別して振り分け
		$ua = $_SERVER['HTTP_USER_AGENT'];
		if (preg_match('/(iPhone|Android.*Mobile|Windows.*Phone)/', $ua)) {
			// スマホだったら
			$this->redirect('/pages/lp_sp');
			exit();
		} else {

			$this->set("areas",$areas); 
			// debug($areas);
		}
	}

	public function search() {
		$this->set('title',"Search | Connect");

		// まだ未完成のためリダイレクトでcomingsoonページに飛ばす
		$this->redirect(array('controller' => 'pages','action' => 'coming_soon'));
		exit();
	}

	public function contact() {
		$this->set('tite',"Contact us | Connect");

	}

	public function contact_sure() {

	}

	
	public function coming_soon() {

	}

	public function favorite() {
		$this->set('title'," | Connect");

		// まだ未完成のためリダイレクトでcomingsoonページに飛ばす
		$this->redirect(array('controller' => 'pages','action' => 'coming_soon'));
		exit();

	}

	public function lp_sp() {
		$this->set('title',"TOP | Connect");
		$areas = $this->Area->find('all');

		$this->set("areas",$areas); 
		// debug($areas);
	}

}