<?php 
class Report extends AppModel {
	public $name='Report';

	public $belongsTo = array(
		'User' => array('className' => 'User')
	);

	public function deletePDF($id) {
		$status=array(
			'conditions'=>array('Report.id'=>$id),
			'fields'=>'filename'
		);
		$filename = $this->find('first',$status)['Report']['filename'];

		$this->delete($id);
		return unlink(WWW_ROOT.'files'.DS.$filename);
	}
}