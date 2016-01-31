<?php 

class QuestionsController extends AppController {
	public $helper = array('HTML', 'form');
	
	public function question($university_id){
		$this->set('title',"Q&A | Connect");

		// まだ未完成のためリダイレクトでcomingsoonページに飛ばす
		$this->redirect(array('controller' => 'pages','action' => 'coming_soon'));
		exit();
	}

	public function practice_que($university_id){
		//university_idから質問を検索

		// まだ未完成のためリダイレクトでcomingsoonページに飛ばす
		$this->redirect(array('controller' => 'pages','action' => 'coming_soon'));
		exit();
	}
}