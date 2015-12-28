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
              <div class="university">
                <ul>
                  <li><?php echo $this->Html->image('sample/photo1.jpg');?></li>
                  <li><?php echo $this->Html->image('sample/photo2.jpg');?></li>
                  <li><?php echo $this->Html->image('sample/photo3.jpg');?></li>
                  <li><?php echo $this->Html->image('sample/photo4.jpg');?></li>
                  <li><?php echo $this->Html->image('sample/photo5.jpg');?></li>
                  <li><?php echo $this->Html->image('sample/photo6.jpg');?></li>
                </ul>
              </div>
              </div><!--/.thumbNail-->

            </div><!--/.slideShow-university-->
          </div>
        </div><!-- row -->


        <!-- Search -->
        <div class="wb">
          <div class="row centered">
          <h4>▼▼ <?php echo $university['University']['university']; ?>についてキーワード検索 ▼▼</h4>
            <div class="input-group">
          <input type="text" class="form-control search-m" placeholder="キーワードで検索　（例:放課後の過ごし方, VISA, 留学生比率)">
          <span class="input-group-btn">
            <button class="btn btn-default search-btn-m" type="button">
              <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </span>
        </div><!-- /input-group -->
          </div><!-- /.row -->
        </div>

        <!-- バナー -->
        <div class="wb">
                 <div class="row centered">
          <div class="col-md-9">
            <a href="#1"><?php echo $this->Html->image('banner_question.jpg');?></a>
          </div><!-- /.col-md-9 -->
        </div><!-- /.row -->
        </div>


<hr>
        <!-- 項目別スコア -->
        <div id="score" class="top-margin-m">

          <h2 class=""><?php echo $university['University']['university']; ?>のスコア</h2>

          <div class="canvas center-block top-margin-xs">
            <canvas id="canvas"></canvas>
          </div>
          <div class="row top-margin-s">
            <div class="score-total">レビュー総合評価　<?php echo number_format($average,1); ?><span class="default-star star-0"></span><span style="margin-left:40px;font-size:18px;">回答者:<?php echo $review_num; ?>人</span></div>

            <div class="col-md-6">
              <table class="table score-table">
                <tbody>
                <?php for ($i=0; $i < 4; $i++) {  ?>
                 <tr>
                  <th><?php echo $scores[$i]['Tag']['tag']; ?></th>
                  <td><?php echo number_format($scores[$i]['Tag']['score'],1); ?><span class="default-star star-<?php echo $i+1;?>"></span></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
          <div class="col-md-6">
            <table class="table score-table">
              <tbody>
                <?php for ($i=4; $i < 8; $i++) {  ?>
                 <tr>
                  <th><?php echo $scores[$i]['Tag']['tag']; ?></th>
                  <td><?php echo number_format($scores[$i]['Tag']['score'],1); ?><span class="default-star star-<?php echo $i+1;?>"></span></td>
                </tr>
                <?php } ?>
              </tbody>
          </table>
        </div>
      </div>
    </div><!-- BASIC -->

<hr>
    <!-- 項目別レビュー -->
    <div class="row centered">
      <h2>項目別レビュー</h2>
      <?php for ($i=0; $i < 3; $i++) { ?>
      <div class="col-md-4">
        <a href=""> <!-- ページ内移動 -->
          <div class="thumnail-box-m">
            <?php echo $this->Html->image("category/".$categories[$i]['Category']['image']);?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m"><?php echo $categories[$i]['Category']['category']; ?></p>
            </div>
          </div>
        </a>
      </div>
      <?php } ?>
    </div>

    <!-- row2 -->
    <div class="row centered">
      <?php for ($i=3; $i < 6; $i++) { ?>
      <div class="col-md-4">
        <a href=""> <!-- ページ内移動 -->
          <div class="thumnail-box-m">
            <?php echo $this->Html->image("category/".$categories[$i]['Category']['image']);?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m"><?php echo $categories[$i]['Category']['category']; ?></p>
            </div>
          </div>
        </a>
      </div>
      <?php } ?>
    </div>  <!-- row2 -->

    <!-- row3 -->
    <div class="row centered">
      <?php for ($i=6; $i < 9; $i++) { ?>
      <div class="col-md-4">
        <a href=""> <!-- ページ内移動 -->
          <div class="thumnail-box-m">
            <?php echo $this->Html->image("category/".$categories[$i]['Category']['image']);?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m"><?php echo $categories[$i]['Category']['category']; ?></p>
            </div>
          </div>
        </a>
      </div>
      <?php } ?>
    </div><!-- row3 -->
      <!-- 項目別レビュー終 -->

<hr>
      <!-- senpai intros -->
      <div class="row centered clearfix top-margin-m">
        <h2><?php echo $university['University']['university']; ?>の先輩紹介</h2>
        <div class="top-margin-xs">
        </div>

        <?php for ($i=0; $i < 3; $i++) { ?>
        <div class="col-md-4">
          <a href="<?php echo SITE_URL; ?>users/user/<?php echo $university['User'][$i]['id']; ?>">
            <div class="senpai-box">
              <div class="thumnail-box-user">
                <?php echo $this->Html->image('developer/'.$university['User'][$i]['image'], array('height' => '240px'));?> <!-- 写真 -->
                <div class="thumnail-text-box-user">
                  <p class="text-on-image thumnail-text-user"><?php echo $university['User'][$i]['name']; ?></p>
                </div>
              </div>
              <p class="senpai-nav"><?php echo $university['User'][$i]['study_start']."〜".$university['User'][$i]['study_end']; ?>に留学</p>
              <p><?php echo $university['User'][$i]['self_intro']; ?></p>
              <p class="senpai-nav-f">▼詳細を見る▼</p>
            </div>
          </a>
        </div> 
        <?php } ?>

      </div><!-- row -->
      <!-- senpai intros -->


<hr>
      <!-- pickup review -->
      <div class="row centered top-margin-m">
      <h2>ピックアップレビュー</h2>

        <?php foreach($categories as $category) { ?>
        <div class="review-box">
          <div class="row">
            <div class="col-md-3">
                  <div class="thumnail-box-s review-picture">
                      <?php echo $this->Html->image('category/'.$category['Category']['image'], array('height' => '120px'));?>
                      <div class="thumnail-text-box-s">
                        <p class="text-on-image thumnail-text-s"><?php echo $category['Category']['category']; ?></p>
                      </div>
                </div>
            </div>
            <div class="col-md-9 review-question-area">
              <h3 class="review-discription"><?php echo $category['Category']['supplement']; ?></h3>
              <p class="review-question">Question: <br>
              <?php echo $category['Category']['question']; ?></p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-9">
              <div class="arrow_box"><?php echo $category['Pickup']['Review']['content']; ?><br>
                <div class="row">
                <div class="general-button clip-button">
                  <div class="button-content">
                    <i class="fa fa-pencil-square-o fa-1x"></i>
                    <span class="button-text">クリップ</span>
                  </div>
                
                </div>
              </div>
            </div>
            </div>
            <div class="col-md-3">
              <a href="">
              <div class="thumnail-box-user-s">
                <?php echo $this->Html->image('user/'.$category['Pickup']['Review']['User']['image'], array('height' => '160px'));?> <!-- 写真 -->
                <div class="thumnail-text-box-user-s">
                  <p class="text-on-image thumnail-text-user-s"><?php echo $category['Pickup']['Review']['User']['name']; ?></p>
                </div>
              </div>
              </a>
            </div>
          </div>
        </div>
        <?php } ?>

      </div>
      <!-- pickup review -->
<hr>
      <!-- pdfダウンロード始 -->
      <!-- pickup review -->
      <div class="row centered top-margin-m">
        <h2>先輩たちの留学報告書</h2>
        <table class="table score-table pdf-table">
          <thead>
              <tr>
              <th>留学期間</th>
              <th>ユーザー</th>
              <th>タイトル</th>
              <th></th>
              </tr>
           </thead>
         <tbody>
          <tr>
            <td>2014/7-2015/6</td>
            <td>新居航平</td>
            <td>ゲント大学留学報告書.pdf</td>
            <td><a href="">ダウンロード</a></td>
          </tr>
          <tr>
            <td>2014/7-2015/6</td>
            <td>新居航平</td>
            <td>ゲント大学留学報告書.pdf</td>
            <td><a href="">ダウンロード</a></td>
          </tr>
          <tr>
            <td>2014/7-2015/6</td>
            <td>新居航平</td>
            <td>ゲント大学留学報告書.pdf</td>
            <td><a href="">ダウンロード</a></td>
          </tr>
          <tr>
            <td>2014/7-2015/6</td>
            <td>新居航平</td>
            <td>ゲント大学留学報告書.pdf</td>
            <td><a href="">ダウンロード</a></td>
          </tr>
        </tbody>
      </table>
    </div>



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

  $.fn.raty.defaults.path = "../../img/star-score";

//totalつまり、平均値
  $('.star-0').raty({ readOnly: true, score:  <?php echo $average; ?>});
//各項目のスコア
  <?php for ($i=1; $i < 9; $i++) { ?>
  $('.star-<?php echo $i; ?>').raty({ readOnly: true, score: <?php echo $scores[$i-1]['Tag']['score']; ?> });
  <?php } ?>


</script>

<!-- slideshow_university -->
<?php echo $this->Html->script( 'slideshow_university.js', array('inline' => 'false')); ?>

