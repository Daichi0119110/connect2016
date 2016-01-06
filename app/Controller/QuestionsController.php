<?php 

class QuestionsController extends AppController {
	public $helper = array('HTML', 'form');
	
	public function question($university_id){
		$this->set('title',"Q&A | Connect");
	}

	public function practice_que($university_id){
		//university_idから質問を検索
	}
}