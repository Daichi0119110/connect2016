<?php

App::uses('AppController', 'Controller');
class PagesController extends AppController {
	public $helper = array('HTML', 'form');
/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array();

	public function lp(){
		$this->set('title',"TOP | Connect");
	}

	public function search(){

	}

}
