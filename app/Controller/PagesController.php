<?php

App::uses('AppController', 'Controller');
class PagesController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array('University','Area','Country','Picture');
	
	public function lp() {
		$this->set('title',"Top | Connect");
		$areas = $this->Area->find('all');

		// universityに写真情報を追加
		for ($i=0; $i < count($areas); $i++) { 
			for ($j=0; $j < count($areas[$i]['Country']); $j++) { 
				for ($k=0; $k < count($areas[$i]['Country'][$j]['University']); $k++) {
					if(isset($areas[$i]['Country'][$j]['University'][$k])) {
						$areas[$i]['Country'][$j]['University'][$k]['image'] = $this->Picture->getpicture($areas[$i]['Country'][$j]['University'][$k]['id']);
					}
				}
			}
		}

		$this->set("areas",$areas); 
		// debug($areas);
	}

	public function search() {
		$this->set('title',"Search | Connect");

	}

	public function contact() {
		$this->set('tite',"Contact us | Connect");

	}

	public function contact_sure() {

	}

	public function favorite() {
		$this->set('title'," | Connect");

	}

	public function lp_sp() {
		$this->set('title',"TOP | Connect");
		$areas = $this->Area->find('all');

		// universityに写真情報を追加
		for ($i=0; $i < count($areas); $i++) { 
			for ($j=0; $j < count($areas[$i]['Country']); $j++) { 
				for ($k=0; $k < count($areas[$i]['Country'][$j]['University']); $k++) {
					if(isset($areas[$i]['Country'][$j]['University'][$k])) {
						$areas[$i]['Country'][$j]['University'][$k]['image'] = $this->Picture->getpicture($areas[$i]['Country'][$j]['University'][$k]['id']);
					}
				}
			}
		}

		$this->set("areas",$areas); 
		// debug($areas);
	}

}