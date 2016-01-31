<?php 
class Score extends AppModel {
//	public $hasMany='Favorite';
	public $name='Score';
	
	public $belongsTo = array(
		'Tag' => array('className' => 'Tag'),
		'User' => array('className' => 'User')
	);

	public function getscore($user_id, $tag_id) {
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
	
	public function update($user_id, $tag_id, $score, $university_id) {
		$status=array(
			'conditions'=>array(
				'Score.user_id'=>$user_id,
				'Score.tag_id'=>$tag_id+1
				)
		);
		$a = $this->find('first',$status);
		if($a){
			$this->save(array("id"=>$a['Score']['id'], "score"=>$score));
		} else {
			$this->create();
			$this->save(array("user_id"=>$user_id, "tag_id"=>$tag_id+1, "score"=>$score, "university_id"=>$university_id));
		}
	}
}