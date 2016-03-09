<?php 
class FavoriteUni extends AppModel {
	public $name='FavoriteUni';
	
	public $recursive = 2;
	
	public $belongsTo = array(
		'University' => array('className'=>'University')
	);

	public function change($user_id,$university_id){
		$status=array(
			'conditions'=>array(
				'AND'=>array(
					'FavoriteUni.university_id'=>$university_id,
					'FavoriteUni.user_id'=>$user_id
				)
			)
		);
		// データベースから取得
		$a = $this->find('first',$status);

		if(!$a){
			// データがなければ
			$this->create();
			$this->save(array('university_id'=>$university_id, 'user_id'=>$user_id));
			return 1;

		} else{
			// データがあれば
			$this->delete($a['FavoriteUni']['id']);
			return 0;
		}
	}
}