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
	        if ($this->data['Image']['image']['size'] > $limit){
	            $this->Session->setFlash('1MB以内の画像が登録可能です。');
	            $this->redirect('index');
	        }
	        // アップロードされた画像か
	        if (!is_uploaded_file($this->data['Image']['image']['tmp_name'])){
	            $this->Session->setFlash('アップロードされた画像ではありません。');
	            $this->redirect('index');
	        }
	        // 保存
	        $image = array(
	            'Image' => array(
	                'filename' => md5(microtime()) . '.jpg',
	                'contents' => file_get_contents($this->data['Image']['image']['tmp_name']),
	            )
	        );
	        $this->Image->save($image);
	        $this->Session->setFlash('画像をアップロードしました。');
	        $this->redirect('index');
		}

		
	}
}