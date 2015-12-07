<!DOCTYPE html>
<html lang="en">
  <body>

    <!-- Fixed navbar -->

	<div id="headerwrap">
		<div class="container">
			<div class="row centered">
        <div class="col-lg-8 col-lg-offset-2">
        <h1 class="title">CONNECT</h1>
        <h2>留学生をつなぐ架け橋</h2>
        <p><br><br></p>
        </div>

        <div class="col-lg-4 col-lg-offset-4">
          <div class="input-group">
          <input type="text" class="form-control search-m" placeholder="知りたい大学を検索">
          <span class="input-group-btn">
          <button class="btn btn-default search-btn-m" type="button">
            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
          </button>
          </span>
          </div><!-- /input-group -->
        </div>

        <div class="col-lg-8 col-lg-offset-2">
            <p><br><br></p>
            <a href="#about" class="btn btn-default btn-ghost page-scroll">Connectとは？</a>
            <a href="#search" class="btn btn-default btn-ghost page-scroll">掲載大学一覧</a>
        </div>
      </div>
	 </div>
  </div><!-- headerwrap -->



  <div class="container wb" id="about">
    <div class="row centered">
      <br><br>
      <div class="col-lg-8 col-lg-offset-2">
        <h3>What's Connect</h3>
        <p>about Connect</p>
      <p><br/><br/></p>
      </div>
    </div><!-- row -->
  </div><!-- container -->

  <div id="dg">
	<div class="container w">
		<div class="row centered">
      <div class="col-lg-8 col-lg-offset-2">
        <h3>Connectの特性</h3>
      </div>
			<div class="col-lg-4">
				<i class="fa fa-heart"></i>
				<h4>DESIGN</h4>
				<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even believable.</p>
			</div><!-- col-lg-4 -->

			<div class="col-lg-4">
				<i class="fa fa-laptop"></i>
				<h4>BOOTSTRAP</h4>
				<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even believable.</p>
			</div><!-- col-lg-4 -->

			<div class="col-lg-4">
				<i class="fa fa-trophy"></i>
				<h4>SUPPORT</h4>
				<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even believable.</p>
			</div><!-- col-lg-4 -->
		</div><!-- row -->
		<br>
		<br>
	</div><!-- container -->
  </div>


<!-- 掲載大学一覧↓ -->
<div class="container wb" id="bg1">
    <div class="row centered">


  <div class="container wb" id="search">
    <div class="row centered">
      <br><br><br>
      <div class="col-lg-8 col-lg-offset-2">
        <h2>掲載大学一覧</h2>
      </div>
    </div>
  </div>


 <div class="container wb">
    <div class="row centered">
      <div class="col-lg-4 col-lg-offset-4">
          <div class="input-group">
          <input type="text" class="form-control search-m" placeholder="知りたい大学を検索">
          <span class="input-group-btn">
          <button class="btn btn-default search-btn-m" type="button">
            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
          </button>
          </span>
          </div><!-- /input-group -->
      </div>
    </div><!-- row -->
  </div><!-- container -->

  <div class="container w">
    <div class="row centered">
      <br><br>
      <div class="col-lg-4">
        <h4>ヨーロッパ</h4>
            <a href="#" class="list-group-item">Univ1</a>
            <a href="#" class="list-group-item">Univ2</a>
            <a href="#" class="list-group-item">Univ3</a>
      </div><!-- col-lg-4 -->

      <div class="col-lg-4">
        <h4>北アメリカ</h4>
            <a href="#" class="list-group-item">Univ1</a>
            <a href="#" class="list-group-item">Univ2</a>
            <a href="#" class="list-group-item">Univ3</a>
      </div><!-- col-lg-4 -->

      <div class="col-lg-4">
        <h4>アジア</h4>
            <div class="list-group">
            <a href="#" class="list-group-item">Univ1</a>
            <a href="#" class="list-group-item">Univ2</a>
            <a href="#" class="list-group-item">Univ3</a>
        </div>
      </div><!-- col-lg-4 -->
    </div><!-- row -->
    <br>
    <br>
  </div><!-- container -->


	<!-- FEATURE SECTION -->
	<div class="container wb">
		<div class="row centered">
			<div class="col-lg-4 col-lg-offset-4">
          <div class="input-group">
          <input type="text" class="form-control" placeholder="追加したい大学をリクエストしてください！">
          <span class="input-group-btn">
          <button class="btn btn-default" type="button">送信</button>
          </span>
          </div><!-- /input-group -->
          <p><br><br></p>
      </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
  </div>

  </div>
</div><!-- 掲載大学一覧↑ -->





  <!-- 運営メンバー -->
  <div id="dg">
    <div class="container">
      <div class="row centered">
        <h2>運営メンバー</h2>
        <br>
        <div class="col-lg-4">
          <div class="tilt">
          <a href="#"><?php echo $this->Html->image('kohei.jpg', array('class'=>'img-responsive img-circle')); ?></a>
          </div>
          <h3>Kohei Arai</h3>
          <p>sentense</p>
        </div>

        <div class="col-lg-4">
          <div class="tilt">
          <a href="#"><?php echo $this->Html->image('daichi.jpg', array('class'=>'img-responsive img-circle')); ?></a>
          </div>
          <h3>Daichi Ogihara</h3>
          <p>sentense</p>
        </div>

        <div class="col-lg-4">
          <div class="tilt">
          <a href="#"><?php echo $this->Html->image('tomoko.jpg', array('class'=>'img-responsive img-circle')); ?></a>
          </div>
          <h3>Tomoko Kawano</h3>font-awesome.min
          <p>sentense</p>
        </div>
      </div><!-- row -->
    </div><!-- container -->
  </div><!-- DG -->

<!--
	<div id="r">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-8 col-lg-offset-2">
					<h4>WE ARE STORYTELLERS. BRANDS ARE OUR SUBJECTS. DESIGN IS OUR VOICE.</h4>
					<p>We believe ideas come from everyone, everywhere. At BlackTie, everyone within our agency walls is a designer in their own right. And there are a few principles we believe—and we believe everyone should believe—about our design craft. These truths drive us, motivate us, and ultimately help us redefine the power of design.</p>
				</div>
			</div>
		</div>
	</div>
-->


	<!-- FOOTER -->
	<div id="f">
		<div class="container">
			<div class="row centered">
				<a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-dribbble"></i></a>

			</div><!-- row -->
		</div><!-- container -->
	</div><!-- Footer -->


	<!-- MODAL FOR CONTACT -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">contact us</h4>
	      </div>
	      <div class="modal-body">
		        <div class="row centered">
		        	<p>We are available 24/7, so don't hesitate to contact us.</p>
		        	<p>
		        		Somestreet Ave, 987<br/>
						London, UK.<br/>
						+44 8948-4343<br/>
						hi@blacktie.co
		        	</p>
		        	<div id="mapwrap">
		<iframe height="300" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.es/maps?t=m&amp;ie=UTF8&amp;ll=52.752693,22.791016&amp;spn=67.34552,156.972656&amp;z=2&amp;output=embed"></iframe>
					</div>
		        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Save & Go</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
        <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>

  </body>
</html>
