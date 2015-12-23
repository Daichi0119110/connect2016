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

		$score = array();

		for ($i=0; $i < 9; $i++) { 
			$total = 0;
			$j = 0;
			foreach ($tags[$i]['Score'] as $tag) {
				$total = $total + $tag['score'];
				$j++;
			}
			$score[$tags[$i]['Tag']['tag']] = round($total/$j,1);
		}

		debug($score);
	}
	
}