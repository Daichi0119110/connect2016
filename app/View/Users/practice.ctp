<?php echo $this->Session->flash();   //メッセージを取り出して表示 ?>

<?php echo $this->Form->create('Report', array('action' => 'upload', 'type' => 'file')); ?>
<?php echo $this->Form->file('file'); ?>
<?php echo $this->Form->hidden('user_id', array('value' => $_SESSION['me']['user_id'])); ?>
<?php echo $this->Form->hidden('university_id', array('value' => $_SESSION['me']['university_id'])); ?>
<?php echo $this->Form->end('レポート');?>

<br>
<br>

<?php
echo $this->Form->create('Picture', array('action'=>'upload', 'type'=>'file', 'enctype' => 'multipart/form-data'));
echo $this->Form->input('image', array('label' => false, 'type' => 'file', 'multiple'));
echo $this->Form->hidden('user_id', array('value' => $_SESSION['me']['user_id']));
echo $this->Form->hidden('university_id', array('value' => $_SESSION['me']['university_id']));
echo $this->Form->text('comment',array('label'=>false,));
echo $this->Form->end('画像');
?>