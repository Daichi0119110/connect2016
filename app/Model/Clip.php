<?php 
class Clip extends AppModel {
	public $name='Clip';
	
	public $recursive = 2; //アソシエーションの階層を2階層までに設定

	public $belongsTo = array(
		'Answer' => array('className' => 'Answer'),
		'Review' => array('className' => 'Review')
	);

	public function change($user_id,$review_id){
		$status=array(
			'conditions'=>array(
				'AND'=>array(
					'Clip.review_id'=>$review_id,
					'Clip.user_id'=>$user_id
				)
			)
		);
		// データベースから取得
		$a = $this->find('first',$status);

		if(!$a){
			// データがなければ
			$this->create();
			$this->save(array('review_id'=>$review_id, 'user_id'=>$user_id));
			return 1;

		} else{
			// データがあれば
			$this->delete($a['Clip']['id']);
			return 0;
		}
	}

	public function getclipnumber($id){
		$status=array(
			'conditions'=>array('Clip.review_id' => $id)
		);
		return $this->find('count',$status);
	}
}