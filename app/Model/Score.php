<?php 
class Score extends AppModel {
//	public $hasMany='Favorite';
	public $name='Score';
	
	public $belongsTo = array(
		'Tag' => array('className' => 'Tag'),
		'User' => array('className' => 'User')
	);

	public function getscore($user_id, $tag_id){
		$status=array(
			'conditions'=>array(
				'Score.user_id'=>$user_id,
				'Score.tag_id'=>$tag_id
				),
			'fields'=>'score'
		);
		if($this->find('first',$status)){
			return $this->find('first',$status)['Score']['score'];
		} else {
			return 3;
		}
	}
	
}