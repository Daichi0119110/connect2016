<?php 
class Favorite_uni extends AppModel {
	public $name='Favorite_uni';
	
	public $belongsTo = array(
		'University' => array('className' => 'University')
	);
}