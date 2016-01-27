<body data-spy="scroll" data-target=".sidebar" data-offset="70" id="top">

<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">

<form action="<?php echo SITE_URL.'users/mypage'; ?>" method="post"> <!-- formの開始 -->

<div class="clearfix">
  <div class="page-title"><?php echo $user['name']; ?> </div><div class="page-sub-title"><?php if($user['university_id']){ ?>--- <?php echo $university['university']?>へ留学 ---<?php }?></div><button type="submit" class="favorite-btn fa fa-floppy-o"> 変更を保存</button>
</div>



    <!-- user picture始 -->
    <div id="userpic">
    <div class="thumnail-box-user-profile">
    <?php echo $this->Html->image('user/'.$user['image'], array('height' => '240px'));?>
    </div>
    </div>
    <!-- user picture終 -->


<!-- スライドショー始 -->
      <div class="row">

            <div class="slideShow">
                  <div class="mainView">
                    <ul>
                      <? $i = 0;?>
                      <?php foreach ($pictures as $picture) { ?>
                      <? $i++; ?>
                      <li><a href="#picture_<?php $i ?>"><?php echo $this->Html->image('university/'.$picture['image'], array('height' => '450px'));?></a></li>
                      <?php } ?>
                    </ul>
                  </div><!--/.mainView-->


                  <div class="thumbNail">
                  <div class="user">
                  <ul>
                    <? $i = 0;?>
                    <?php foreach ($pictures as $picture) { ?>
                    <? $i++; ?>
                    <li id="picture_<?php $i ?>"><?php echo $this->Html->image('university/'.$picture['image'], array('height' => '50px'));?></li>
                    <?php } ?>
                  </ul>
                  </div>
                  </div><!--/.thumbNail-->
          </div><!--/.slideShow-->
      </div><!-- row -->



<!-- userinfo -->

<!-- user basic 始 -->
<div class="row">
  <div class="col-md-5">
    <div id="about">
             <table class="table profile-basicinfo">
                 <tbody>
                  <tr>
                   <th>名前</th>
                   <td>
                     <div class="form-group">
                       <input type="text" class="form-control form-edit-s" value="<?php echo $user['name']; ?>">
                   </div>
                  </td>
                  </tr>
                  <tr>
                   <th>性別</th>
                   <td>
                      <div class="form-group">
                      <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="man" checked>
                            男性
                          </label>
                      </div>
                      <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="woman">
                            女性
                          </label>
                      </div>
                   </td>
                  </tr>
                  <tr>
                   <th>留学先名</th>
                   <td>
                     <div class="form-group">
                      <select class="form-control">
                        <option>University of Ghent</option>
                        <option>ETH</option>
                        <option>University of Washington</option>
                      </select>
                   </div>
                  </td>
                  </tr>
                  <tr>
                   <th>留学期間</th>
                   <td>
                      <div class="input-daterange input-group" id="datepicker">
                          <input type="text" class="input-sm form-control form-edit-xs-left" name="start" value="<?php echo $user['study_start']; ?>">
                          <span class="input-group-addon">to</span>
                          <input type="text" class="input-sm form-control form-edit-xs-right" name="end" value="<?php echo $user['study_end']; ?>">
                      </div>

                   </td>
                  </tr>
                  <tr>
                    <th>学年</th>
                    <td>
                    <div class="form-group">
                       <input type="text" class="form-control form-edit-s" value="<?php echo $user['study_grade']; ?>">
                    </div>
                    </td>
                   </tr>
                  <tr>
                   <th>専攻</th>
                   <td>
                     <div class="form-group">
                       <input type="text" class="form-control form-edit-s" value="<?php echo $user['study_major']; ?>">
                     </div>
                   </td>
                  </tr>
                </tbody>
            </table>
    </div>
  </div>
<!-- user basic 終 -->



<!-- self intro始 -->
  <div class="col-md-7">
    <div id="about-sub-1">
    <h4><i class="fa fa-smile-o fa-1x"></i>自己紹介</h4>
      <div class="profile-selfintro-box">
        <div class="form-group">
            <textarea type="text" class="form-control form-edit-l"><?php echo $user['self_intro']; ?></textarea>
        </div>

      </div>
    </div>
<!-- self intro終 -->


<!-- user 留学報告書DL始 -->
    <div id="about-sub-2" class="top-margin-s centered">
      <h3><i class="fa fa-download fa-1x"></i>留学報告書</h3>

          <table class="table score-table pdf-table">
            <thead>
            </thead>
            <tbody>
              <?php foreach($reports as $report){ ?>
              <tr>
                <td><a href="<?php echo SITE_URL.'pdf/'.$report['filename']; ?>"><?php echo $report['filename']; ?></a></td>
                <div class="btn-group" role="group">
                <td><a href="#" class="btn btn-default bule-button" role="button">削除する</a></td>
              </div>
              </tr>
              <?php } ?>
            </tbody>
          </table>
    </div>
<!-- user 留学報告書DL終 -->

</div>
</div><!-- userinfo -->

<hr>

<!-- 項目別スコア -->
        <div id="score" class="top-margin-m ">

          <h2 class=""><?php echo $university['university']; ?>のスコア</h2>

          <div class="canvas center-block top-margin-xs">
            <canvas id="canvas"></canvas>
          </div>
          <div class="row top-margin-s">
            <div class="score-total">レビュー評価</div>

            <div class="col-md-6">
              <table class="table score-table">
                <tbody>
                 <tr>
                  <th>旅行のしやすさ</th>
                  <td><span class="default-star star-1"></span></td>
                </tr>
                <tr>
                  <th>町の過ごしやすさ</th>
                  <td><span class="default-star star-2"></span></td>
                </tr>
                <tr>
                  <th>大学キャンパスの快適さ</th>
                  <td><span class="default-star star-3"></span></td>
                </tr>
                <tr>
                  <th>授業レベルの高さ</th>
                  <td><span class="default-star star-4"></span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-md-6">
            <table class="table score-table">
              <tbody>
               <tr>
                <th>物価の手軽さ</th>
                <td><span class="default-star star-5"></span></td>
              </tr>
              <tr>
                <th>住居環境の良さ</th>
                <td><span class="default-star star-6"></span></td>
              </tr>
              <tr>
                <th>食事面での満足度</th>
                <td><span class="default-star star-7"></span></td>
              </tr>
              <tr>
                <th>治安の良さ</th>
                <td><span class="default-star star-8"></span></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div><!-- BASIC -->


<hr>

<!-- レビュー始 -->
      <div id="review" class=" row">
      <h2>レビュー</h2>
                <!--旅行-->
                <?php foreach ($reviews as $review) { ?>
                <div id="review-sub-1" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/'.$review['Category']['image'], array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s"><?php echo $review['Category']['category']; ?></p>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-9 review-question-area">
                      <h3 class="review-discription"><?php echo $review['Category']['supplement']; ?></h3>
                      <p class="review-question">Question: <br>
                      <?php echo $review['Category']['question']; ?></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-9">
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l"><?php echo $review['content']; ?></textarea>
                        </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('user/'.$user['image'], array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s"><?php echo $user['name'];?></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
                <?php } ?>
    </div>
<!-- レビュー終 -->

<hr>

<!-- 質問と答え -->
      <div id="question" class="row">
              <h2>Q&A</h2>
                <!--質問１つの塊-->
                <?php foreach ($answers as $answer) { ?>
                <div id="question-sub-1" class="question-box">
                  <div class="row">
                    <h3 class="question-title">Question</h3>
                    <div class="col-md-2">
                     <a href="">
                          <div class="thumnail-box-user-xs">
                              <?php echo $this->Html->image('user/'.$answer['Question']['user']['image'], array('height' => '100px'));?>
                              <div class="thumnail-text-box-user-xs">
                                <p class="text-on-image thumnail-text-user-xs"><?php echo $answer['Question']['user']['name']; ?></p>
                              </div>
                        </div>
                      </a>
                    </div>
                    <div class="col-md-10">
                        <div class="arrow_box_left">
                          <?php echo $answer['Question']['question']; ?>
                        </div>
                    </div>
                  </div>

                  <h3 class="answer-title">Answer</h3>
                  <div class="row"> <!-- answer -->

                    <div class="col-md-9">
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l"><?php echo $answer['answer']; ?></textarea>
                        </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('user/'.$answer['User']['image'], array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s"><?php echo $answer['User']['name']; ?></p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                </div> <!-- questionbox -->
                <?php } ?>
        </div>
<!-- 質問と答え -->

</div>
<!-- leftside contents終 -->


</form> <!-- formの終了 -->

<!-- sidebar -->
      <div class="col-md-3" role="complementary">

        <nav class="sidebar hidden-print" data-offset-top="999">
          <ul class="nav">

        <a href="https://www.facebook.com/kohei.arai.5">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '300px'));?>
            <div class="thumnail-text-box-m">
                <p class="text-on-image thumnail-text-m">新居航平さんのFacebook</p>
            </div>
          </div>
        </a>

            <li>
              <a href="#about">▶about</a>
              <ul class="nav">
                <li><a href="#about-sub-1">自己紹介</a></li>
                <li><a href="#about-sub-2">留学報告書</a></li>
              </ul>
            </li>
            <li>
              <a href="#score">▶評価</a>
            </li>
             <li>
              <a href="#review">▶レビュー</a>
              <ul class="nav">
                <li><a href="#review-sub-1">旅行</a></li>
                <li><a href="#review-sub-2">環境</a></li>
                <li><a href="#review-sub-3">物価</a></li>
                <li><a href="#review-sub-4">住居</a></li>
                <li><a href="#review-sub-5">食事</a></li>
                <li><a href="#review-sub-6">安全</a></li>
                <li><a href="#review-sub-7">授業</a></li>
                <li><a href="#review-sub-8">留学生</a></li>
                <li><a href="#review-sub-9">言語</a></li>
              </ul>
            </li>
             <li>
              <a href="#question">▶Q&A</a>
              <ul class="nav">
                <li><a href="#question-sub-1">question1</a></li>
                <li><a href="#question-sub-2">question2</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
<!-- sidebar end -->


    </div> <!-- all row-->
</div> <!-- all container-->

<script>
function chart(){
  var radarChartData = {
    labels: ["旅行のしやすさ", "町の過ごしやすさ", "大学キャンパスの快適さ", "授業のレベルの高さ", "物価の手軽さ", "住居環境の良さ", "食事面での満足度","治安の良さ"],
    datasets: [
      { //このかっこの塊をコピーすれば,二つ以上のデータを一つの中にいれられる。
        label: "ゲント大学の平均スコア",
        fillColor: "rgba(25,51,192,0.2)",//レーダーの中身の色
        strokeColor: "rgba(25,51,192,0.8)",//レーダーのborderの色
        pointColor: "rgba(25,51,192,1)",//レーダーの頂点の色
        pointStrokeColor: "rgba(25,51,192,1)",
        pointHighlightFill: "rgba(25,51,192,1)",
        pointHighlightStroke: "rgba(25,51,192,1)",
        data: [4,3,3,4.12,2.3,5,4,3]
      },
    ]
  };

  window.onload = function(){
    window.myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData, {
      responsive: true
    });
  }
}
chart();


  chart();

  $.fn.raty.defaults.path = "../img/star-score";

  //totalつまり、平均値
  $('.star-0').raty();
//各項目のスコア
  $('.star-1').raty({  score: 2 });
  $('.star-2').raty({  score: 3.4 });
  $('.star-3').raty({ score: 4.2 });
  $('.star-4').raty({ score: 4.7 });
  $('.star-5').raty({  score: 2 });
  $('.star-6').raty({  score: 2 });
  $('.star-7').raty({  score: 2 });
  $('.star-8').raty({ score: 2 });

</script>

<!-- slideshow_user -->
<?php echo $this->Html->script( 'slideshow_user.js', array('inline' => 'false')); ?>


<script>
$('#datepicker').datepicker({
format: "yyyy年mm月",
language: "ja",
autoclose: true,
orientation: "bottom auto"
});
</script>