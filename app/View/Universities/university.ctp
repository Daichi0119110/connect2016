<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">
  <div class="content">


<!-- スライドショー始 -->
      <div class="row">
        <div class="col-md-9">
            <div class="slideShow">
            <div class="mainView">
            <ul>
            <li><a href="#1"><?php echo $this->Html->image('sample/photo1.jpg');?></a></li>
            <li><a href="#2"><?php echo $this->Html->image('sample/photo2.jpg');?></a></li>
            <li><a href="#3"><?php echo $this->Html->image('sample/photo3.jpg');?></a></li>
            <li><a href="#4"><?php echo $this->Html->image('sample/photo4.jpg');?></a></li>
            <li><a href="#5"><?php echo $this->Html->image('sample/photo5.jpg');?></a></li>
            <li><a href="#6"><?php echo $this->Html->image('sample/photo6.jpg');?></a></li>
            </ul>
            </div><!--/.mainView-->
            <div class="thumbNail">
            <ul>
            <li><?php echo $this->Html->image('sample/photo1.jpg');?></li>
            <li><?php echo $this->Html->image('sample/photo2.jpg');?></li>
            <li><?php echo $this->Html->image('sample/photo3.jpg');?></li>
            <li><?php echo $this->Html->image('sample/photo4.jpg');?></li>
            <li><?php echo $this->Html->image('sample/photo5.jpg');?></li>
            <li><?php echo $this->Html->image('sample/photo6.jpg');?></li>
            </ul>
            </div><!--/.thumbNail-->

            </div><!--/.slideShow-->
        </div>
      </div><!-- row -->


      <!-- Search -->
      <div class="container wb">
        <div class="row centered">
          <div class="col-md-9">
              <div class="input-group">
              <input type="text" class="form-control" placeholder="▲▲大学について検索">
              <span class="input-group-btn">
              <button class="btn btn-default" type="button">送信</button>
              </span>
              </div><!-- /input-group -->
          </div><!-- /.col-md-9 -->
        </div><!-- /.row -->
      </div>



    <!-- バナー -->
      <div class="container wb">
        <div class="row centered">
          <div class="col-md-9">
              <div class="input-group">
              <input type="text" class="form-control" placeholder="▲▲大学について検索">
              <span class="input-group-btn">
              <button class="btn btn-default" type="button">送信</button>
              </span>
              </div><!-- /input-group -->
          </div><!-- /.col-md-9 -->
        </div><!-- /.row -->
      </div>



    <!-- 項目別スコア -->
      <div id="basic">
        <div class="container">
          <div class="row">
          <h4>ゲント大学のスコア</h4>
           

            <div class="col-md-5">
              
              <div style="width:80%">
                <canvas id="canvas"></canvas>
              </div>

            </div>
             <div class="col-md-7">
              <div class="row">
                <h5>項目別スコア</h5>
                <div class="col-md-6">４つの項目</div>
                <div class="col-md-6">４つの項目</div>
                
              </div>
            </div>
          </div>
        </div><!-- container -->
      </div><!-- BASIC -->


<!-- 項目別レビュー -->
      <div id="basic">
        <div class="container">
          <div class="row centered">
            <div class="col-md-9">
              <h4>項目別レビュー</h4>
            </div>
          </div>



    <!-- photo section -->
          <!-- row1 -->
        <div class="row centered">
          <div class="col-md-3"> <!-- 1-->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_travel.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">旅行</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 2 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_environment.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">環境</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 3 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_money.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">物価</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->
        </div> <!-- row1 -->

          <!-- row2 -->
        <div class="row centered">
          <div class="col-md-3"> <!-- 1-->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_apartment.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">住居</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 2 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_food.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">食事</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 3 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_safety.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">安全</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->
        </div>  <!-- row2 -->

          <!-- row3 -->
        <div class="row centered">
          <div class="col-md-3"> <!-- 1-->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_study.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">授業</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 2 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_student.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">留学生</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 3 -->
<a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_language.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">言語</p>
                </div>
              </div>
            </a>          </div><!-- /col-md-3 -->
        </div><!-- row3 -->
        </div><!-- container -->
      </div><!-- Basic-->
<!-- 項目別レビュー終 -->


<!-- senpai intros -->
        <div id="basic">
          <div class="container">
              <div class="row centered">
                <div class="col-md-9">
                  <h4>▲▲大学の先輩紹介</h4>
                </div>
              </div>

            <div class="row centered">
              <div class="col-md-3"> <!-- 1-->
              <h1>PIC</h1>
              <h1>A1</h1>
              </div><!-- /col-md-3 -->

              <div class="col-md-3"> <!-- 2 -->
              <h1>PIC</h1>
              <h1>A2</h1>
              </div><!-- /col-md-3 -->

              <div class="col-md-3"> <!-- 3 -->
              <h1>PIC</h1>
              <h1>A3</h1>
              </div><!-- /col-md-3 -->
            </div>
          </div><!-- container -->
        </div><!-- basic -->
<!-- senpai intros -->



      <!-- pickup review -->
        <div id="basic">
          <div class="container">
            <div class="row centered">
              <div class="col-md-9">
                <h4>ピックアップレビュー</h4>
              </div>
            </div>

            <div class="row pull-left">
              <div class="col-md-9">
                <h1>PIC</h1>
                <h1>A1</h1>
              </div><!-- /col-md-9 -->
            </div>
          </div><!-- container -->
      </div><!-- basic -->
<!-- pickup review -->

<!-- pdfダウンロード始 -->
      <!-- pickup review -->
        <div id="basic">
          <div class="container">
            <div class="row centered">
              <div class="col-md-9">
                <h4>先輩たちの留学報告書</h4>
              </div>
            </div>

            <div class="row pull-left">
              <div class="col-md-9">
                <h1>PIC</h1>
                <h1>A1</h1>
              </div><!-- /col-md-9 -->
            </div>
          </div><!-- container -->
      </div><!-- basic -->



<!-- pdfダウンロード終 -->



  </div>
</div>
<!-- leftside contents終 -->


<!-- sidebar -->

 <div class="col-md-2 col-md-offset-1">
  <div class="sidebar-nav affix">
    <nav class="affix-nav">
        <ul class="nav">
            <li><a href="#one">1番目</a></li>
            <li><a href="#2">2番目</a></li>
            <li><a href="#3">3番目</a></li>
            <li><a href="#t">4番目</a></li>
            <li><a href="#r">5番目</a></li>
        </ul>
    </nav>
  </div>
</div>

    </div> <!-- all row-->
</div> <!-- all container-->

<script>
  chart();
</script>


