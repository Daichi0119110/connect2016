<?php 

class UniversitiesController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array('University','User','Review','Answer','Category','Clip','Country','Picture_uni','Question','Score','Tag');

	public function university($id){
		$this->set('title',"University | Connect");
	}

	//開発用（バックエンド）のページ
	public function practice_uni($id){
		$university = $this->University->getuniversity($id);
		$tags = $this->Tag->find('all');
		$categories = $this->Category->find('all');

		// debug($university);
		// debug($tags);
		// debug($categories);
	}
	
}