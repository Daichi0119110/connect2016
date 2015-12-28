<div class="uploads form">
<?php echo $this->Form->create('Report', array('action' => 'upload', 'type' => 'file')); ?>
<?php echo $this->Form->file('file'); ?>
<?php echo $this->Form->hidden('user_id', array('value' => $_SESSION['me']['user_id'])); ?>
<?php echo $this->Form->hidden('university_id', array('value' => $_SESSION['me']['university_id'])); ?>
<?php echo $this->Form->end('Submit');?>
</div><!-- form -->