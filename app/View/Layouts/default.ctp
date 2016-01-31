<!DOCTYPE html>
<html lang="ja">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?php echo $title; ?></title>

	<?php echo $this->Html->css('bootstrap.css'); ?>
	<?php echo $this->Html->css('bootstrap.min.css'); ?>
	<?php echo $this->Html->css('font-awesome.min.css'); ?>
	<?php echo $this->Html->css('main.css'); ?>
	<?php echo $this->Html->css('clip.css'); ?>
	<?php echo $this->Html->css('datepicker.css'); ?>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://code.jquery.com/jquery.js"></script>
    
	<?php echo $this->Html->script('bootstrap.min.js'); ?>
	<?php echo $this->Html->script('jquery.tabs.js'); ?>
	<?php echo $this->Html->script('bootstrap.js'); ?>
	<?php echo $this->Html->script('npm.js'); ?>
	<?php echo $this->Html->script('slideupdown.js'); ?>
	<?php echo $this->Html->script('scrollspy.js'); ?>
	<?php echo $this->Html->script('Chart.js'); ?>
	<?php echo $this->Html->script('jquery.raty.js'); ?>
	<?php echo $this->Html->script('datepicker.js'); ?>
	<?php echo $this->Html->script('datepicker.min.js'); ?>
	<?php echo $this->Html->script('datepicker.ja.min.js'); ?>

	<?php echo $this->fetch('script'); ?>


</head>


<body>

	<div id="container">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<?php echo SITE_URL; ?>">CONNECT</a>
				</div>
				<?php if(!isset($_SESSION['me']['facebook_id'])) { ?>
				<!--ログイン前ヘッダー-->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="<?php echo SITE_URL; ?>users/login">Sign up</a></li>
						<li><a href="<?php echo SITE_URL; ?>users/login"> Login</a></li>
					</ul>
				</div>
				<!--ログイン前ヘッダ終了ー-->
				<?php } else { ?>
				<!--ログイン後ヘッダー-->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="<?php echo SITE_URL; ?>favorites/favorite">Favorite</a></li>
						<li><a href="<?php echo SITE_URL; ?>clips/clip">Clip</a></li>
						<li><a href="<?php echo SITE_URL; ?>users/mypage">My page</a></li>
						<li><a href="<?php echo SITE_URL; if(isset($_SESSION['me']['university_id'])){ echo "universities/university/". $_SESSION['me']['university_id']; } ?>">My university</a></li>
						<li><a href="<?php echo SITE_URL; ?>users/logout">Logout</a></li>
					</ul>
				</div><!--/.nav-collapse -->
				<!--ログイン後ヘッダ終了ー-->
				<?php } ?>
			</div>
		</div>

		<div id="content">
			<?php echo $this->fetch('content'); ?>


		</div>
		<div id="f">
				<div class="container">
					<div class="row centered">
						<p class="copyright">
							Copyright © 2015-2016 connect.com. All Rights Reserved.
						</p>

					</div><!-- row -->
				</div><!-- container -->
			</div><!-- Footer -->
	</div>


	
</body>
</html>
