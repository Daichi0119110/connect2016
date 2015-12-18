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
	<?php echo $this->Html->css('font-awesome.min.css'); ?>
	<?php echo $this->Html->css('main.css'); ?>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<?php echo $this->Html->script('bootstrap.min.js'); ?>
	<?php echo $this->Html->script('creative.js'); ?>
	<?php echo $this->Html->script('Chart.js'); ?>
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
					<a class="navbar-brand" href="#">CONNECT</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="index.html">ユーザー登録</a></li>
						<li><a href="about.html">ログイン</a></li>
					</ul>
				</div><!--/.nav-collapse -->
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
