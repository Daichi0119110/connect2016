<?php 

class ClipsController extends AppController {
	public $helper = array('HTML', 'form');
	public $uses = array("Clip");


	public function ready(){	// ページ読み込み時のclip情報の読み込み
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
		}
		if ($this->request->is('ajax')) {
			$this->autoRender = false;
			$this->autoLayout = false;

			$status=array(
				'conditions'=>array('Clip.user_id'=>$_POST['user_id'])
			);

			$a = $this->Clip->find('all',$status);
			$clips = array();
			foreach ($a as $b) {
				array_push($clips, $b['Clip']['review_id']);
			}
			$this->header('Content-Type: application/json');
			echo json_encode($clips);
			exit();
		}
		$this->redirect(array('controller'=>'pages', 'action' => 'lp'));
	}


	public function change(){	// ボタンおした時
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
		}
		if ($this->request->is('ajax')) {
			$this->autoRender = false;
			$this->autoLayout = false;

			$a = $this->Clip->change($_POST['user_id'],$_POST['review_id']);
			$response = array('id'=>$_POST['review_id'], 'flg'=>$a);
			$this->header('Content-Type: application/json');
			echo json_encode($response);
			exit();
		}
		$this->redirect(array('controller'=>'pages', 'action' => 'lp'));
	}
}