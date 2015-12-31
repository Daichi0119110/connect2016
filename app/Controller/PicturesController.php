<?php 

class PicturesController extends AppController {
	public $helper = array('HTML', 'form');

	public function upload(){
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
			$this->redirect(array('controller'=>'pages', 'action' => 'lp'));
		}		
		$this->autoRender = false;
		$this->autoLayout = false;

		if ($this->request->is('post')) {
			$limit = 1024 * 1024;
	        debug($this->data);

	        // 画像の容量チェック
	        if ($this->data['Picture']['image']['size'] > $limit){
	            $this->Session->setFlash('1MB以内の画像が登録可能です。');
	            $this->redirect(array('controller'=>'users', 'action' => 'practice'));
	        }
	        // アップロードされた画像か
	        if (!is_uploaded_file($this->data['Picture']['image']['tmp_name'])){
	            $this->Session->setFlash('アップロードされた画像ではありません。');
	            $this->redirect(array('controller'=>'users', 'action' => 'practice'));
	        }
	        // 保存
	        $image = array(
	            'Picture' => array(
	                'image' => md5(microtime()) . '.jpg',
	                'user_id' => $this->request->data['Picture']['user_id'],
	                'university_id' => $this->request->data['Picture']['university_id'],
	                'comment' => $this->request->data['Picture']['comment']
	            )
	        );

	        // debug(file_get_contents($this->data['Picture']['image']['tmp_name']));

	        $this->Picture->save($image);
	        $this->Session->setFlash('画像をアップロードしました。');
	        $this->redirect(array('controller'=>'users', 'action' => 'practice'));
		}

		
	}
}