<?php 

class UniversitiesController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array('University','User','Review','Answer','Category','Clip','Country','Picture_uni','Question','Score','Tag');

	public function university($id){
		$this->set('title',"University | Connect");
	}

	// 開発用（バックエンド）のページ
	public function practice_uni($id){
		$university = $this->University->getuniversity($id);
		$tags = $this->Tag->find('all');
		$categories = $this->Category->find('all');
		// 被クリップ数順に並び替えできると良い

		// pickupレビューの抽出
		for ($i=0; $i < 9; $i++) { 
			$pickup_review_id = array();
			foreach ($categories[$i]['Review'] as $review) {
				$pickup_review_id += array($review['id'] => $this->Clip->getclipnumber($review['id']));
			}
			arsort($pickup_review_id);
			$review_id = array_keys($pickup_review_id);
			$categories[$i] += array('Pickup' => $this->Review->getreview($review_id[0]));
			$categories[$i]['Pickup']['Review']['clip'] = $this->Clip->getclipnumber($categories[$i]['Pickup']['Review']['id']);
		}

		// debug($university);
		debug($tags);
		// debug($categories);

		// スコアの計算
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
		// debug($score);
	}
	
}