<div class="uploads form">
<?php echo $this->Form->create('Report', array('action' => 'upload', 'type' => 'file')); ?>
<?php echo $this->Form->file('file'); ?>
<?php echo $this->Form->hidden('user_id', array('value' => $_SESSION['me']['user_id'])); ?>
<?php echo $this->Form->hidden('university_id', array('value' => $_SESSION['me']['university_id'])); ?>
<?php echo $this->Form->end('Submit');?>
</div><!-- form -->

<br>
<br>

<?php $form->create(null, array('type'=>'file', 'action'=>'add'));?>
<?php $session->flash();?>
<?php $form->file('image');?>
<?php $form->submit('画像を追加');?>
<?php $form->end();?>