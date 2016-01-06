<?php 
class Picture extends AppModel {
//	public $hasMany='Favorite';
	public $name='Picture';
	
	public $belongsTo = array(
		'User' => array('className' => 'User')
	);

	public $validate = array(
	   'picture'=>array(
	      'rule1' => array(
	         //画像サイズの制限
	         'rule' => array('fileSize', '<=', "1048576"),
	         'message' => '画像サイズは1MB以下でお願いします',
	      )
	   )
	);

	public function getpicture($university_id){
		$status=array(
			'conditions'=>array('Picture.university_id' => $university_id)
		);
		$picture = $this->find('first',$status);

		if($picture){
			return $picture['Picture']['image'];
		} else {
			return null;
		}
	}
}