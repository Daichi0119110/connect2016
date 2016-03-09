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

		// レビューの抽出
		for ($i=0; $i < 9; $i++) { 
			// レビュー一覧の取得
			$reviews[$i] = $this->Review->find("all", array("conditions"=>array("Category.id"=>$i+1, "Review.university_id"=>$id)));
			for ($j=0; $j < count($reviews[$i]); $j++) { 
				$reviews[$i][$j]["Review"]["clip"] = $this->Clip->getclipnumber($reviews[$i][$j]["Review"]['id']);
			}
			
			// pickupレビューの抽出
			$pickup_review_id = array();
			foreach ($categories[$i]['Review'] as $review) {
				if ($review['university_id'] == $id) {
					$pickup_review_id += array($review['id'] => $this->Clip->getclipnumber($review['id']));
				}
			}
			arsort($pickup_review_id);
			$review_id = array_keys($pickup_review_id);
			if ($review_id) {
				$categories[$i] += array('Pickup' => $this->Review->getreview($review_id[0]));
				$categories[$i]['Pickup']['Review']['clip'] = $this->Clip->getclipnumber($categories[$i]['Pickup']['Review']['id']);
			}
		}

		// reviewのユーザー情報取得
		for ($i=0; $i < 9; $i++) { 
			for ($j=0; $j < count($categories[$i]["Review"]); $j++) { 
				$categories[$i]["Review"][$j] += $this->User->getuser($categories[$i]["Review"][$j]['user_id']);
			}
		}

		// スコアの計算
		$average = 0;
		$k = 0;
		for ($i=0; $i < 8; $i++) { 
			$total = 0;
			$j = 0;
			$tags[$i]['Tag']['score'] = 3.0; //デフォルト値
			$scores[$i] = $this->Score->find('all', array("conditions"=>array("Tag.id"=>$i+1, "Score.university_id"=>$id)));
			if($scores[$i]) {
				foreach ($scores[$i] as $score) {
					$total = $total + $score['Score']['score'];
					$j++;
				}
				if($j == 0){
					continue;
				}
				$k = $k + 1;
				$average = $average + $total/$j;
				$tags[$i]['Tag']['score'] = round($total/$j,1);
			}
		}
		if($k == 0){
			$this->set('average',3.0);
		} else {
		$this->set('average',round($average/$k,1));
		}

		// レビュー者数の取得
		$this->set('review_num', $this->Score->find('count',array("conditions"=>array("Score.university_id"=>$id), 'fields' => 'DISTINCT Score.user_id')));
		$this->set('reviews', $reviews);
		$this->set('university',$university);
		$this->set('scores',$tags);
		$this->set('categories',$categories);
	}
}