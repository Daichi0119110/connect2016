<?php 

class UniversitiesController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array('University','User','Review','Answer','Category','Clip','Country','Picture','Question','Score','Tag');

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
		}

		// スコアの計算
		$average = 0;
		$k = 0;
		for ($i=0; $i < 8; $i++) { 
			$total = 0;
			$j = 0;
			$tags[$i]['Tag']['score'] = 3.0; //デフォルト値
			foreach ($tags[$i]['Score'] as $tag) {
				$total = $total + $tag['score'];
				$j++;
			}
			if($j == 0){
				continue;
			}
			$k = $k + 1;
			$average = $average + $total/$j;
			$tags[$i]['Tag']['score'] = round($total/$j,1);
		}
		if($k == 0){
			$this->set('average',3.0);
		}
		$this->set('average',round($average/$k,1));

		// レビュー者数の取得
		$this->set('review_num', $this->Score->find('count',array('fields' => 'DISTINCT Score.user_id')));

		$this->set('university',$university);
		$this->set('scores',$tags);
		$this->set('categories',$categories);
	}
}