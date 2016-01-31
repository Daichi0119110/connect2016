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
	        $tmp = $this->request->data['Picture']['image']['tmp_name'];

	        // アップロードされた画像か？
	        if (!is_uploaded_file($tmp)){
	            $this->Session->setFlash('アップロードされた画像ではありません');
	            $this->redirect(array('controller'=>'users', 'action' => 'mypage'));
	        }
	        // 拡張子が正しいか？
	        switch(getimagesize($this->request->data['Picture']['image']['tmp_name'])['mime']) {
				case 'image/gif':
					$ext = '.gif';
					break;
				case 'image/jpeg':
					$ext = '.jpg';
					break;
				case 'image/png':
					$ext = '.png';
					break;
				default:
					$this->Session->setFlash('GIF、JPEG、PNGの拡張子のファイルがご利用できます');
					$this->redirect(array('controller'=>'users', 'action' => 'mypage'));
			}
	        // 保存
	        $filename = md5(microtime()) . $ext;
			$file = WWW_ROOT.'img'.DS.$this->request->data['Picture']['folder'].DS.$filename; // userの写真かuniversityの写真か判別
	        if (move_uploaded_file($tmp, $file)) {
		        $status = array(
	                'image' => $filename,
	                'user_id' => $this->request->data['Picture']['user_id'],
	                'university_id' => $this->request->data['Picture']['university_id'],
	                'comment' => $this->request->data['Picture']['comment']
		        );

		        $this->Picture->save($status);
		        $this->redirect(array('controller'=>'users', 'action' => 'mypage'));
		    }
		}

		
	}
}