<?php 

class UniversitiesController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array('University','User','Review','Answer','Category','Clip','Country','Picture_uni','Question','Score','Tag');

	public function university($id){
		// タイトルの設定
		$this->set('title',"University | Connect");

		$university = $this->University->getuniversity($id);
		$tags = $this->Tag->find('all');
		$categories = $this->Category->find('all');

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
			$categories[$i]['Pickup']['Review'] += $this->User->getuser($categories[$i]['Pickup']['Review']['user_id']);
		}

		// スコアの計算
		$average = 0;
		for ($i=0; $i < 9; $i++) { 
			$total = 0;
			$j = 0;
			foreach ($tags[$i]['Score'] as $tag) {
				$total = $total + $tag['score'];
				$j++;
			}
			$average = $average + $total/$j;
			$tags[$i]['Tag']['score'] = round($total/$j,1);
		}
		$this->set('average',round($average/8,1));

		// レビュー者数の取得
		$this->set('review_num', $this->Score->find('count',array('fields' => 'DISTINCT Score.user_id')));

		$this->set('university',$university);
		$this->set('scores',$tags);
		$this->set('categories',$categories);
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
			$categories[$i]['Pickup']['Review'] += $this->User->getuser($categories[$i]['Pickup']['Review']['user_id']);
		}

		// スコアの計算
		for ($i=0; $i < 9; $i++) { 
			$total = 0;
			$average = 0;
			$j = 0;
			foreach ($tags[$i]['Score'] as $tag) {
				$total = $total + $tag['score'];
				$j++;
			}
			$average = $average + $total/$j;
			$tags[$i]['Tag']['score'] = round($total/$j,1);
		}
		$this->set('average',round($average/8,1));

		// レビュー者数の取得
		$this->set('review_num', $this->Score->find('count',array('fields' => 'DISTINCT Score.user_id')));

		// debug($university);
		// debug($tags);
		debug($categories);
	}
	
}