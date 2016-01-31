<?php 

class FavoriteUnisController extends AppController {
	public $helper = array('HTML', 'form');


	public function ready(){	// ページ読み込み時のお気に入り情報の読み込み
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
		}
		if ($this->request->is('ajax')) {
			$this->autoRender = false;
			$this->autoLayout = false;

			$status=array(
				'conditions'=>array(
					'AND'=>array(
						'FavoriteUni.user_id'=>$_POST['user_id'],
						'FavoriteUni.university_id'=>$_POST['university_id']
						)
					)
			);

			$a = $this->FavoriteUni->find('first',$status);
			if($a){
				$flg = 1;
			} else {
				$flg = 0;
			}
			$this->header('Content-Type: application/json');
			echo json_encode($flg);
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

			$a = $this->FavoriteUni->change($_POST['user_id'],$_POST['university_id']);
			$this->header('Content-Type: application/json');
			echo json_encode($a);
			exit();
		}
		$this->redirect(array('controller'=>'pages', 'action' => 'lp'));
	}
}