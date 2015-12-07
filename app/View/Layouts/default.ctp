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
						<li><a data-toggle="modal" data-target="#myModal" href="#myModal"><i class="fa fa-envelope-o"></i></a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
		<div id="content">
			<?php echo $this->fetch('content'); ?>
		</div>
	</div>
</body>
</html>
