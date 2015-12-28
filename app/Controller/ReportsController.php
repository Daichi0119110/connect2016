<?php 

class ReportsController extends AppController {
	public $helper = array('HTML', 'form');

	public function upload(){
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
			$this->redirect(array('controller'=>'pages', 'action' => 'lp'));
		}		
		$this->autoRender = false;
		$this->autoLayout = false;

		if ($this->request->is('post')) {
			$tmp = $this->request->data['Report']['file']['tmp_name'];

			//要編集
			if(is_uploaded_file($tmp)) {
				$filename = basename($tmp);
				$file = WWW_ROOT.'files'.DS.$filename; // app>webroot>filesというフォルダに保存
				if (move_uploaded_file($tmp, $file)) {
					$status = array(
						'user_id' =>$this->request->data['Report']['user_id'],
						'university_id' =>$this->request->data['Report']['university_id'],
						'filename' => $filename
					);
					$this->Report->create();
					if ($this->Report->save($this->request->data)) {
						$this->Session->setFlash(__('The upload has been saved'));
						$this->redirect(array('controller' => 'users','action' => 'practice'));
					} else {
						$this->Session->setFlash(__('The upload could not be saved. Please, try again.'));
					}
				}
			}
		}

		
	}
}