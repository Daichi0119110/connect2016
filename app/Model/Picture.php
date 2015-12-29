<?php 
class Picture extends AppModel {
//	public $hasMany='Favorite';
	public $name='Picture';
	
	public $belongsTo = array(
		'User' => array('className' => 'User')
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