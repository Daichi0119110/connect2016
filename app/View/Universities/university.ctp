<!-- all-->
<div class="container">
  <div class="row">


    <!-- leftside content -->
    <div class="col-md-9">
      <div class="content">

        <div class="padding-s clearfix">
          <div class="page-title"><?php echo $university['University']['university']; ?></div><p class="favorite-btn fa fa-heart" data-university-id="<?php echo $university['University']['id']; ?>" id="favo_uni"> お気に入り登録</p><div class="page-sub-title"></div>
        </div>
        
        <!-- スライドショー始 -->
        <div class="row">
          <div class="col-md-9">
            <div class="slideShow">
              <div class="mainView">
                <ul>
                  <?php for ($i=0; $i <1000 ; $i++) { ?>
                  <?php if (!isset($university['Picture'][$i])){ break; } ?>
                  <li><a href="#<?php echo $i+1; ?>"><?php echo $this->Html->image('university/'.$university['Picture'][$i]['image']);?></a></li>
                  <?php } ?>
                </ul>
              </div><!--/.mainView-->
              <div class="thumbNail">
                <div class="university">
                  <ul>
                    <?php for ($i=0; $i <1000 ; $i++) { ?>
                    <?php if (!isset($university['Picture'][$i])){ break; } ?>
                    <li><?php echo $this->Html->image('university/'.$university['Picture'][$i]['image']);?></li>
                    <?php } ?>
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
            <a href="<?php echo SITE_URL; ?>questions/question/<?php echo $university['University']['id']; ?>"><?php echo $this->Html->image('banner_question.jpg');?></a>
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
      <div class="row centered" id="review">
        <h2>項目別レビュー</h2>
        <?php for ($i=0; $i < 3; $i++) { ?>
        <div class="col-md-4">
          <a href="#category<?php echo $categories[$i]['Category']['id']; ?>"> <!-- ページ内移動 -->
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
          <a href="#category<?php echo $categories[$i]['Category']['id']; ?>"> <!-- ページ内移動 -->
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
          <a href="#category<?php echo $categories[$i]['Category']['id']; ?>"> <!-- ページ内移動 -->
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
      <!-- pickup review -->
      <div class="row centered top-margin-m">
        <h2>ピックアップレビュー</h2>

        <?php foreach($categories as $category) { ?>
        <div class="review-box top-margin-s" id="category<?php echo $category['Category']['id']; ?>">
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
            <!-- ピックアップレビュー -->
            <?php if(isset($category['Pickup'])) { ?>
            <div class="row">
              <div class="col-md-9">
                <div class="arrow_box"><?php echo $category['Pickup']['Review']['content']; ?><br>
                  <div class="row">
                        <p class="favorite-btn float-right fa fa-pencil-square-o" id="review<?php echo $category['Pickup']['Review']['id']; ?>" data-review-id="<?php echo $category['Pickup']['Review']['id']; ?>">クリップ</p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <a href="<?php echo SITE_URL."users/user/".$category['Pickup']['User']['id']; ?>">
                  <div class="thumnail-box-user-s">
                    <?php echo $this->Html->image('user/'.$category['Pickup']['User']['image'], array('height' => '160px'));?><!-- 写真 -->
                    <div class="thumnail-text-box-user-s">
                      <p class="text-on-image thumnail-text-user-s"><?php echo $category['Pickup']['User']['name']; ?></p>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <?php } else { ?>
            <div class="row">
              <div class="col-md-9">
                <div class="arrow_box"><br>このレビューはまだ記入されておりません<br><br>
                </div>
              </div>
              <div class="col-md-3">
                <div class="thumnail-box-user-s">
                  <?php echo $this->Html->image('user/noimage.png', array('height' => '160px')); ?><!-- 写真 -->
                  <div class="thumnail-text-box-user-s">
                    <p class="text-on-image thumnail-text-user-s">No Image</p>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <!-- ピックアップレビュー終了 -->
            <!-- 一般レビュー -->
            <?php foreach ($reviews[$category['Category']['id']-1] as $review) { ?>
            <?php if(isset($category['Pickup'])) { ?>
            <?php if ($review['Review']['id'] !== $category['Pickup']['Review']['id']) { ?>
            <div class="row review-content-others-<?php echo $review['Review']['category_id']; ?>"> <!--左のクラス名の数字にカテゴリーのidをいれる-->
              <div class="col-md-9">
                <div class="arrow_box"><?php echo $review['Review']['content']; ?><br>
                  <div class="row">
                        <p class="favorite-btn float-right fa fa-pencil-square-o" id="review<?php echo $review['Review']['id']; ?>" data-review-id="<?php echo $review['Review']['id']; ?>">クリップ</p>
                        <!-- span要素にclickイベントが聞いていない -->
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <a href="<?php echo SITE_URL."users/user/".$review['User']['id']; ?>">
                  <div class="thumnail-box-user-s">
                    <?php echo $this->Html->image('user/'.$review['User']['image'], array('height' => '160px'));?><!-- 写真 -->
                    <div class="thumnail-text-box-user-s">
                      <p class="text-on-image thumnail-text-user-s"><?php echo $review['User']['name']; ?></p>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <!-- 一般レビュー終了 -->
            <?php if(isset($category['Pickup'])) { ?>
            <div class="row">
              <p class="view-more-btn view-more-btn-<?php echo $category['Category']['id']; ?>">▼▼ 同項目のレビューを見る ▼▼</p><!--ボタンにカテゴリーのidをいれる-->
            </div>
            <?php } ?>
          </div>
          <?php } ?>

        </div>
        <!-- pickup review -->

        <hr>
        <!-- senpai intros -->
        <div class="row centered clearfix top-margin-m" id="senpai">
          <h2><?php echo $university['University']['university']; ?>の先輩紹介</h2>
          <div class="top-margin-xs">
          </div>

          <?php for ($j=0; $j < count($university['User'])/3; $j++) { ?>
          <div class="row centered user-box-<?php echo $j;?>">
          <?php for ($i=$j*3; $i < ($j+1)*3; $i++) { ?>
            <div class="col-md-4">
              <a href="<?php echo SITE_URL; ?>users/user/<?php echo $university['User'][$i]['id']; ?>">
                <div class="senpai-box">
                  <div class="thumnail-box-user">
                    <img src="http://graph.facebook.com/<?php echo $university['User'][$i]['facebook_id']; ?>/picture?type=large" height="240px"><!-- 写真 -->
                    <div class="thumnail-text-box-user">
                      <p class="text-on-image thumnail-text-user"><?php echo $university['User'][$i]['name']; ?></p>
                    </div>
                  </div>
                  <p class="senpai-nav"><?php echo $university['User'][$i]['study_start']."〜".$university['User'][$i]['study_end']; ?></p>
                  <p><?php echo $university['User'][$i]['self_intro']; ?></p>
                  <p class="senpai-nav-f">▼詳細を見る▼</p>
                </div>
              </a>
            </div>
            <?php if($i+1 >= count($university['User'])){ break; }?>
          <?php } ?>
          </div>
          <?php } ?>

        </div><!-- row -->
        <div class="row">
          <p class="view-more-btn view-more-btn-users">▼▼ 他の先輩を見る ▼▼</p>
        </div>
        <!-- senpai intros -->

        <hr>
        <!-- pdfダウンロード始 -->
        <!-- pickup review -->
        <div class="row centered top-margin-m" id="pdf">
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
              <?php foreach($university['Report'] as $report) { ?>
              <tr>
                <td><?php echo date("Y/n",strtotime($university['User'][$i]['study_start']))."〜".date("Y/n",strtotime($university['User'][$i]['study_end'])); ?></td>
                <td><?php echo $report['User']['name']; ?></td>
                <td><?php echo $report['filename']; ?></td>
                <td><a href="<?php echo SITE_URL.'pdf/'.$report['filename']; ?>">ダウンロード</a></td> <!-- ダウンロードを実行 -->
              </tr>
              <?php } ?>

            </tbody>
          </table>
        </div>
        <!-- pdfダウンロード終 -->



      </div>
    </div>
    <!-- leftside contents終 -->


    <!-- sidebar -->
    <div class="col-md-3" role="complementary">

      <nav class="sidebar hidden-print">
        <ul class="nav">

          <div class="input-group top-margin-s">
            <input type="text" class="form-control search-s" placeholder="<?php echo $university['University']['university']; ?>に関して検索">
            <span class="input-group-btn">
              <button class="btn btn-default search-btn-s" type="button">
                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
              </button>
            </span>
          </div>
          <li>
            <a href="#score">▶<?php echo $university['University']['university']; ?>のスコア</a>
          </li>
          <li>
            <a href="#review">▶項目別レビュー</a>
            <ul class="nav">
              <?php for ($i=0; $i < 9; $i++) { ?>
              <li><a href="#category<?php echo $categories[$i]['Category']['id']; ?>"><?php echo $categories[$i]['Category']['category']; ?></a></li>
              <?php } ?>
            </ul>
          </li>
          <li>
            <a href="#senpai">▶<?php echo $university['University']['university']; ?>の先輩</a>
          </li>
          <li>
            <a href="#pdf">▶留学報告書</a>
          </li>
          <li>
            <a href="<?php echo SITE_URL; ?>questions/question/<?php echo $university['University']['id']; ?>">▶<?php echo $university['University']['university']; ?>のQ&Aコーナー</a>
          </li>
        </ul>
      </nav>
    </div>
    <!-- sidebar end -->

  </div> <!-- all row-->
</div> <!-- all container-->

<script>


/*もっと見る系*/
// レビュー
 <?php foreach($categories as $category) { ?>
  $(function(){
    setTimeout(function(){
      $(".review-content-others-<?php echo $category['Category']['id']; ?>").css('cssText','display:none!important;');
$(".view-more-btn-<?php echo $category['Category']['id']; ?>").click(function(){
  $(".review-content-others-<?php echo $category['Category']['id']; ?>").show('slow');
  $(".view-more-btn-<?php echo $category['Category']['id']; ?>").hide();
});
    },1000);
});
 <?php } ?>


//ユーザー
 $(function(){
    setTimeout(function(){

      $(".user-box-0").nextAll().css('cssText','display:none!important;');
$(".view-more-btn-users").click(function(){
  $(".user-box-0").nextAll().show('slow');
  $(".view-more-btn-users").hide();
});
    },1000);
});


function chart(){
  var radarChartData = {
    labels: [<?php for ($i=0; $i < 8; $i++){ 
      echo '"'.$scores[$i]['Tag']['tag'].'"';
      if($i != 7){
       echo ","; 
     }}?>],
     datasets: [
      { //このかっこの塊をコピーすれば,二つ以上のデータを一つの中にいれられる。
        label: "<?php echo $university['University']['university']; ?>の平均スコア",
        fillColor: "rgba(25,51,192,0.2)",//レーダーの中身の色
        strokeColor: "rgba(25,51,192,0.8)",//レーダーのborderの色
        pointColor: "rgba(25,51,192,1)",//レーダーの頂点の色
        pointStrokeColor: "rgba(25,51,192,1)",
        pointHighlightFill: "rgba(25,51,192,1)",
        pointHighlightStroke: "rgba(25,51,192,1)",
        data: [<?php for ($i=0; $i < 8; $i++){ 
          echo '"'.$scores[$i]['Tag']['score'].'"';
          if($i != 7){
           echo ","; 
         }}?>]
       }
       ]
     };


     var options = {
      scaleOverride : true,
      scaleSteps : 5,
      scaleStepWidth : 1,
         //Number - 目盛りの線の幅  
         scaleStartValue : 0,
       };

       window.onload = function(){
        window.myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData,options, {
          responsive: true
        });
      }
    }
    chart();

    $.fn.raty.defaults.path = "../../img/star-score";

//totalつまり、平均値
$('.star-0').raty({ readOnly: true, score:  <?php echo $average; ?>});
//各項目のスコア
<?php for ($i=1; $i < 9; $i++) { ?>
  $('.star-<?php echo $i; ?>').raty({ readOnly: true, score: <?php echo $scores[$i-1]['Tag']['score']; ?> });
  <?php } ?>

// ボタン関連
$(function() {
  // ページ読み込み時
  <?php if($_SESSION['me']) { ?>
    // ログインしていたら
    $.post('/connect2016/clips/ready/',
      {'user_id':<?php echo $_SESSION['me']['id']; ?>}
      ,function(res){
        $.each(res, function(){
          $('#review'+this).html('すでにClipされています');
        });
      }, "json");
  
  // 大学がお気に入りかどうか
  $.post('/connect2016/favoriteunis/ready/',
    {'user_id':<?php echo $_SESSION['me']['id']; ?>, 'university_id':$('p.favorite-btn').data('university-id')}
    ,function(res){
      if(res == 1){
        $('#favo_uni').html(' お気に入り済み');
      } 
    }, "json");
  <?php } else { ?>
    // ログインしていなかったら何もしない

  <?php } ?>

  // clipボタン押したら
  $('p.button-text').click(function(e){
    <?php if($_SESSION['me']) { ?>
      // ログインしていたら
      $.post('/connect2016/clips/change/',
        {'user_id':<?php echo $_SESSION['me']['id']; ?>, 'review_id':$(this).data('review-id')}
        ,function(res){
          if(res.flg == 1){
            $("#review"+res.id).html('すでにClipされています');
          } if(res.flg == 0){
            $("#review"+res.id).html('Clip');
          }
        }, "json");
    <?php } else { ?>
    // ログインしていなかったら
    // ログインページへの遷移を確認するモーダル表示
    <?php } ?>
  });

  //大学お気に入りボタン押したら
  $('#favo_uni').click(function(e){
    <?php if($_SESSION['me']) { ?>
      // ログインしていたら
      $.post('/connect2016/favoriteunis/change/',
        {'user_id':<?php echo $_SESSION['me']['id']; ?>, 'university_id':$(this).data('university-id')}
        ,function(res){
          if(res == 1){
            $('#favo_uni').html(' お気に入り済み');
          } if(res == 0){
            $('#favo_uni').html(' お気に入り登録');
          }
        }, "json");
    <?php } else { ?>
    // ログインしていなかったら
    // ログインページへの遷移を確認するモーダル表示

    <?php } ?>
    
  });

});





</script>

<!-- slideshow_university -->
<?php echo $this->Html->script( 'slideshow_university.js', array('inline' => 'false')); ?>

