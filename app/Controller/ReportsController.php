<?php 

class ReportsController extends AppController {
	public $helper = array('HTML', 'form');
	public $components = array('Session');
	public $uses = array('Report','University');

	public function upload(){
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
			$this->redirect(array('controller'=>'pages', 'action' => 'lp'));
		}

		$this->autoRender = false;
		$this->autoLayout = false;

		if($this->request->data['Report']['file']['tmp_name']){

			if ($this->request->data['Report']['file']['type'] != 'application/pdf') {
				$this->Session->setFlash('アップロードファイルの形式が正しくありません');
				$this->redirect(array('controller' => 'users','action' => 'practice'));
			}

			$tmp = $this->request->data['Report']['file']['tmp_name'];
			if(is_uploaded_file($tmp)) {
				$filename = $this->University->getuniversity($this->request->data['Report']['university_id'])['University']['university'].'_'.$this->request->data['Report']['user_id'].'_'.date('YmdHis').'.pdf';
				$file = WWW_ROOT.'files'.DS.$filename; // app>webroot>filesというフォルダに保存
				if (move_uploaded_file($tmp, $file)) {
					$status = array(
						'user_id' =>$this->request->data['Report']['user_id'],
						'university_id' =>$this->request->data['Report']['university_id'],
						'filename' => $filename
					);
					$this->Report->create();
					if ($this->Report->save($status)) {
						$this->redirect(array('controller' => 'users','action' => 'edit'));
					}
				}
			}
			$this->Session->setFlash('ファイルは正常に保存出来ませんでした');
		} else {
			$this->Session->setFlash('アップロードファイルが登録されていません');
		}
		$this->redirect(array('controller' => 'users','action' => 'practice'));
	}

	public function show(){
		$this->autoRender = false;
		$this->autoLayout = false;

		$file = "http://localhost/connect2016/app/webroot/files/".$this->params['filename'];

		// PDFを出力する
		header("Content-Type: application/pdf");

		// ファイルを読み込んで出力
		readfile($file);
	}

	public function delete($id){
		$this->autoRender = false;
		$this->autoLayout = false;

		if($this->Report->deletePDF($id)) {
			$this->Session->setFlash('ファイルは正常に削除されました');
			$this->redirect(array('controller' => 'users','action' => 'mypage'));
		}
		$this->Session->setFlash('ファイルは削除出来ませんでした');
		$this->redirect(array('controller' => 'users','action' => 'mypage'));
	}
}