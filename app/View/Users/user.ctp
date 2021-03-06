<body data-spy="scroll" data-target=".sidebar">

<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">


<div class="clearfix scroll-fix" id="about">
  <div class="page-title">Arai Kohei </div><p class="favorite-btn fa fa-heart"> お気に入り登録</p><div class="page-sub-title">--- ゲント大学へ留学 ---</div>
</div>



    <!-- user picture始 -->
    <div id="userpic">
    <div class="thumnail-box-user-profile">
    <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?>
    </div>
    </div>
    <!-- user picture終 -->




<!-- スライドショー始 -->
      <div class="row">
            <div class="slideShow">
                  <div class="mainView">
                  <ul>
                  <li><h4>コメントコメントコメントコメント</h4><a href="#1"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a>
                    </li>
                  <li><a href="#2"><?php echo $this->Html->image('sample/photo1.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#3"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#4"><?php echo $this->Html->image('sample/photo2.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#5"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#6"><?php echo $this->Html->image('sample/photo3.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#7"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#8"><?php echo $this->Html->image('sample/photo4.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#9"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#10"><?php echo $this->Html->image('sample/photo5.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#11"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
                  <li><a href="#12"><?php echo $this->Html->image('sample/photo6.jpg', array('height' => '450px'));?></a></li>
                  </ul>
                  </div>


                  <div class="thumbNail">
                  <div class="user">
                  <ul>
                  <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '50px'));?></li>
                  <li><?php echo $this->Html->image('sample/photo1.jpg');?></li>
                  <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '50px'));?></li>
                  <li><?php echo $this->Html->image('sample/photo2.jpg');?></li>
                  <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '50px'));?></li>
                  <li><?php echo $this->Html->image('sample/photo3.jpg');?></li>
                  <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '50px'));?></li>
                  <li><?php echo $this->Html->image('sample/photo4.jpg');?></li>
                  <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '50px'));?></li>
                  <li><?php echo $this->Html->image('sample/photo5.jpg');?></li>
                  <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '50px'));?></li>
                  <li><?php echo $this->Html->image('sample/photo6.jpg');?></li>
                  </ul>
                  </div>
                  </div>
          </div>
      </div><!-- row -->


<!-- userinfo -->

<!-- user basic 始 -->
<div class="row">
  <div class="col-md-5">
    <div id="about-sub-1" class="scroll-fix">
             <table class="table profile-basicinfo">
                 <tbody>
                  <tr>
                   <th>名前</th>
                   <td>Kohei Arai</td>
                  </tr>
                  <tr>
                   <th>性別</th>
                   <td>男性</td>
                  </tr>
                  <tr>
                   <th>留学期間</th>
                   <td>2014年9月〜2015年7月</td>
                  </tr>
                  <tr>
                    <th>大学・学年</th>
                    <td>
                    東京工業大学・４年
                    </td>
                   </tr>
                  <tr>
                   <th>専攻</th>
                   <td>経営システム工学</td>
                  </tr>
                </tbody>
            </table>
    </div>
  </div>
<!-- user basic 終 -->



<!-- self intro始 -->
  <div class="col-md-7">
      <h4><i class="fa fa-smile-o fa-1x"></i>自己紹介</h4>
      <div class="profile-selfintro-box">
      こんにちは。ゲント大学に留学してました、新居です。自分自身、留学する時の情報集めで戸惑いました。ぜひ気軽に質問してください！
  </div>
<!-- self intro終 -->


<!-- user 留学報告書DL始 -->
    <div id="about-sub-2" class="top-margin-s scroll-fix">
      <h4><i class="fa fa-download fa-1x"></i>この先輩の留学報告書をダウンロード</h4>
    </div>

          <table class="table score-table pdf-table">
            <thead>
              <tr>
                <th>タイトル</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php foreach($university['Report'] as $report) { ?>
              <tr>
                <td><?php echo $report['filename']; ?></td>
                <td><a href="<?php echo SITE_URL.'pdf/'.$report['filename']; ?>">ダウンロード</a></td> <!-- ダウンロードを実行 -->
              </tr>
              <?php } ?>

            </tbody>
          </table>


<!-- user 留学報告書DL終 -->
  </div>

</div>
<!-- userinfo -->

<hr>

<!-- 項目別スコア -->
        <div id="score" class="top-margin-l scroll-fix">

          <h2 class="">ゲント大学のスコア</h2>

          <div class="canvas center-block top-margin-xs">
            <canvas id="canvas"></canvas>
          </div>
          <div class="row top-margin-s">
            <div class="score-total">レビュー総合評価　3.4<span class="default-star star-0"></span></div>

            <div class="col-md-6">
              <table class="table score-table">
                <tbody>
                 <tr>
                  <th>旅行のしやすさ</th>
                  <td>2.0<span class="default-star star-1"></span></td>
                </tr>
                <tr>
                  <th>町の過ごしやすさ</th>
                  <td>3.4<span class="default-star star-2"></span></td>
                </tr>
                <tr>
                  <th>大学キャンパスの快適さ</th>
                  <td>4.2<span class="default-star star-3"></span></td>
                </tr>
                <tr>
                  <th>授業レベルの高さ</th>
                  <td>4.7<span class="default-star star-4"></span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-md-6">
            <table class="table score-table">
              <tbody>
               <tr>
                <th>物価の手軽さ</th>
                <td>3.4<span class="default-star star-5"></span></td>
              </tr>
              <tr>
                <th>住居環境の良さ</th>
                <td>3.4<span class="default-star star-6"></span></td>
              </tr>
              <tr>
                <th>食事面での満足度</th>
                <td>3.4<span class="default-star star-7"></span></td>
              </tr>
              <tr>
                <th>治安の良さ</th>
                <td>3.4<span class="default-star star-8"></span></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div><!-- BASIC -->


<hr>

<!-- レビュー始 -->
      <div id="review" class="row scroll-fix">
      <h2>レビュー</h2>
                <!--レビュー１つの塊-->
                <div  id="review-sub-1" class="scroll-fix">
                <div class="review-box top-margin-s">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_travel.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">旅行</p>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-9 review-question-area">
                      <h3 class="review-discription">その地域からの旅行の行きやすさ</h3>
                      <p class="review-question">Question: <br>
                      その地域からの国内旅行や近辺の地域への旅行のしやすさについて教えてください。(地理的な影響や交通機関へのアクセスなど）</p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-9">
                      <div class="arrow_box">国内旅行に関しては、学生限定で国内のどこでも片道５ユーロ程度でいける特別電車乗車券があり、週末を利用してよく国内旅行へ出かけている。海外旅行に関しても、ベルギーはヨーロッパの中心にあることから、ヨーロッパであればどこでも比較的にアクセスしやすいと言える。ゲントから空港までもシャトルバスが出ており、簡単に空港にたどり着くことができる。<br>
                        <div class="row">
                        
                          <p class="favorite-btn float-right fa fa-pencil-square-o"> クリップ</p>
                      </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>
                  </div>
                </div>
                </div>
                <!--レビュー１つの塊終了-->

                <!--レビュー１つの塊-->
                <div id="review-sub-2" class="scroll-fix">
                <div class="review-box top-margin-s">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_travel.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">旅行</p>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-9 review-question-area">
                      <h3 class="review-discription">その地域からの旅行の行きやすさ</h3>
                      <p class="review-question">Question: <br>
                      その地域からの国内旅行や近辺の地域への旅行のしやすさについて教えてください。(地理的な影響や交通機関へのアクセスなど）</p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-9">
                      <div class="arrow_box">国内旅行に関しては、学生限定で国内のどこでも片道５ユーロ程度でいける特別電車乗車券があり、週末を利用してよく国内旅行へ出かけている。海外旅行に関しても、ベルギーはヨーロッパの中心にあることから、ヨーロッパであればどこでも比較的にアクセスしやすいと言える。ゲントから空港までもシャトルバスが出ており、簡単に空港にたどり着くことができる。<br>
                        <div class="row">
                        
                          <p class="favorite-btn float-right fa fa-pencil-square-o"> クリップ</p>
                      </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>
                  </div>
                </div>
                </div>
                <!--レビュー１つの塊終了-->
    </div>
<!-- レビュー終 -->

<hr>

<!-- 質問と答え -->
      <div id="question" class="row scroll-fix">
              <h2>Q&A</h2>
                <!--質問１つの塊-->
                <div id="question-sub-1" class="scroll-fix">
                  <div class="question-box">
                  <div class="row wu">
                    <h3 class="question-title">Question</h3>
                    <div class="col-md-2">
                     <a href="">
                          <div class="thumnail-box-user-xs">
                              <?php echo $this->Html->image('developer/daichi.jpg', array('height' => '100px'));?>
                              <div class="thumnail-text-box-user-xs">
                                <p class="text-on-image thumnail-text-user-xs">荻原大地</p>
                              </div>
                        </div>
                      </a>
                    </div>
                    <div class="col-md-10">
                        <div class="arrow_box_left">
                          ゲントでのおすすめの観光プランを教えて下さい。
                        </div>
                    </div>
                  </div>
<h3 class="answer-title">Answer</h3>

                  <div class="row answer-content"> <!-- answer -->

                    <div class="col-md-9">
                      <div class="arrow_box">夜は川辺が綺麗でロマンチック。ビールなどを片手に友達と行くのがおすすめ！また、電車で２０分のBrugeはベルギーのベネチアと呼ばれ、日本人女性観光客にかなりおすすめの町である。<br>
                        <div class="row">
                        
                          <p class="favorite-btn float-right fa fa-pencil-square-o"> クリップ</p>
                      </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                  <div class="row answer-content"> <!-- answer -->
                    
                    <div class="col-md-9">
                      <div class="arrow_box">夜は川辺が綺麗でロマンチック。ビールなどを片手に友達と行くのがおすすめ！また、電車で２０分のBrugeはベルギーのベネチアと呼ばれ、日本人女性観光客にかなりおすすめの町である。<br>
                        <div class="row">
                        
                          <p class="favorite-btn float-right fa fa-pencil-square-o"> クリップ</p>
                      </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                  <div class="row">
              <p class="view-more-btn">▼▼ 同項目のレビューを見る ▼▼</p>
            </div>
                </div> <!-- questionbox -->
                </div>
                <!--質問１つの塊終了-->
 
                <!--質問１つの塊-->
                <div id="question-sub-2" class="scroll-fix">
                <div class="question-box">
                  <div class="row">
                    <h3 class="question-title">Question</h3>
                    <div class="col-md-2">
                     <a href="">
                          <div class="thumnail-box-user-xs">
                              <?php echo $this->Html->image('developer/daichi.jpg', array('height' => '100px'));?>
                              <div class="thumnail-text-box-user-xs">
                                <p class="text-on-image thumnail-text-user-xs">荻原大地</p>
                              </div>
                        </div>
                      </a>
                    </div>
                    <div class="col-md-10">
                        <div class="arrow_box_left">
                          ゲントでのおすすめの観光プランを教えて下さい。
                        </div>
                    </div>
                  </div>
<h3 class="answer-title">Answer</h3>

                  <div class="row question-content"> <!-- answer -->

                    <div class="col-md-9">
                      <div class="arrow_box">夜は川辺が綺麗でロマンチック。ビールなどを片手に友達と行くのがおすすめ！また、電車で２０分のBrugeはベルギーのベネチアと呼ばれ、日本人女性観光客にかなりおすすめの町である。<br>
                        <div class="row">
                        
                          <p class="favorite-btn float-right fa fa-pencil-square-o"> クリップ</p>
                      </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                  <div class="row question-content"> <!-- answer -->

                    <div class="col-md-9">
                      <div class="arrow_box">夜は川辺が綺麗でロマンチック。ビールなどを片手に友達と行くのがおすすめ！また、電車で２０分のBrugeはベルギーのベネチアと呼ばれ、日本人女性観光客にかなりおすすめの町である。<br>
                        <div class="row">
                        
                          <p class="favorite-btn float-right fa fa-pencil-square-o"> クリップ</p>
                      </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                </div> <!-- questionbox -->
                </div>
                <!--質問１つの塊終了-->
 
        </div>
<!-- 質問と答え -->

 
</div>
<!-- leftside contents終 -->




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
                <li><a href="#review-sub-1">項目1</a></li>
                <li><a href="#review-sub-2">項目2</a></li>
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

$(function(){
    setTimeout(function(){
      $('.answer-content').css('display','none');
$('.answer-content:first').css('display','block');
$('.view-more-btn').click(function(){
  $('.answer-content').show('slow');
  $('.view-more-btn').hide();
});

    },100);
});


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
        data: [3,3,3,1.12,2.3,2,2,3]
      },
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
  $('.star-0').raty({ readOnly: true, score: 2 });
//各項目のスコア
  $('.star-1').raty({ readOnly: true, score: 2 });
  $('.star-2').raty({ readOnly: true, score: 3.4 });
  $('.star-3').raty({ readOnly: true, score: 4.2 });
  $('.star-4').raty({ readOnly: true, score: 4.7 });
  $('.star-5').raty({ readOnly: true, score: 2 });
  $('.star-6').raty({ readOnly: true, score: 2 });
  $('.star-7').raty({ readOnly: true, score: 2 });
  $('.star-8').raty({ readOnly: true, score: 2 });

</script>

<!-- slideshow_user -->
<?php echo $this->Html->script( 'slideshow_user.js', array('inline' => 'false')); ?>
