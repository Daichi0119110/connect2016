<body data-spy="scroll" data-target=".sidebar" data-offset="70" id="top">

<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">


<div class="padding-s">
  <h2 style="display:inline">Arai Kohei</h2>
            <i class="fa fa-heart fa-2x"></i>
  <h2 style="display:inline">ゲント大学へ留学</h2>
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
                  <li><a href="#1"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
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
                  </div><!--/.mainView-->


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
                  </div><!--/.thumbNail-->
          </div><!--/.slideShow-->
      </div><!-- row -->



<!-- userinfo -->

<!-- user basic 始 -->
<div class="row">
  <div class="col-md-7">
    <div id="about" class="padding-m">
      <h2>USER BASIC INFO</h2>
    </div>
  </div>
<!-- user basic 終 -->



<!-- self intro始 -->
  <div class="col-md-5">
    <div id="about-sub-1" class="padding-m">
      <h2>自己紹介</h2>
    </div>
<!-- self intro終 -->


<!-- user 留学報告書DL始 -->
    <div id="about-sub-2"class="padding-m">
      <a href=""><h3><i class="fa fa-download fa-1x"></i>留学報告書をダウンロード</h3></a>
    </div>
<!-- user 留学報告書DL終 -->
  </div>

</div>
<!-- userinfo -->



<!-- 項目別スコア -->
        <div id="score" class="top-margin-m padding-m">

          <h2 class="">ゲント大学のスコア</h2>

          <div class="canvas center-block top-margin-xs">
            <canvas id="canvas"></canvas>
          </div>
          <div class="row top-margin-s">
            <div class="score-total">レビュー総合評価　3.4<span class="default-star"></span><span style="margin-left:40px;font-size:18px;">回答者:6人</span></div>

            <div class="col-md-6">
              <table class="table score-table">
                <tbody>
                 <tr>
                  <th>旅行のしやすさ</th>
                  <td>3.4<span class="default-star"></span></td>
                </tr>
                <tr>
                  <th>町の過ごしやすさ</th>
                  <td>3.4<span class="default-star"></span></td>
                </tr>
                <tr>
                  <th>大学キャンパスの快適さ</th>
                  <td>3.4<span class="default-star"></span></td>
                </tr>
                <tr>
                  <th>授業レベルの高さ</th>
                  <td>3.4<span class="default-star"></span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-md-6">
            <table class="table score-table">
              <tbody>
               <tr>
                <th>治安の良さ</th>
                <td>3.4<span class="default-star"></span></td>
              </tr>
              <tr>
                <th>食事面での満足度</th>
                <td>3.4<span class="default-star"></span></td>
              </tr>
              <tr>
                <th>住居環境の良さ</th>
                <td>3.4<span class="default-star"></span></td>
              </tr>
              <tr>
                <th>物価の手軽さ</th>
                <td>3.4<span class="default-star"></span></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div><!-- BASIC -->




<!-- レビュー始 -->
      <div id="review" class="padding-m row">
      <h2>レビュー</h2>
                <!--レビュー１つの塊-->
                <div  id="review-sub-1" class="padding-m">
                <div class="review-box">
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
                <div id="review-sub-2" class="padding-m">
                <div class="review-box">
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

<!-- 質問と答え -->
      <div id="question" class="padding-m row">
              <h2>Q&A</h2>
                <!--質問１つの塊-->
                <div id="question-sub-1" class="question-box padding-m">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-user-s">
                              <?php echo $this->Html->image('developer/daichi.jpg', array('height' => '160px'));?>
                              <div class="thumnail-text-box-user-s">
                                <p class="text-on-image thumnail-text-user-s">荻原大地</p>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="arrow_box_left">
                          ベルギーってぶっちゃけどうyo？
                        </div>
                    </div>
                  </div>

                  <div class="row"> <!-- answer -->
                    <div class="col-md-9">
                      <div class="arrow_box">ちょーたのしい<br>
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
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                </div> <!-- reviewbox -->
                <!--質問１つの塊終了-->
                <!--質問１つの塊-->
                <div id="question-sub-2" class="question-box padding-m">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-user-s">
                              <?php echo $this->Html->image('developer/daichi.jpg', array('height' => '160px'));?>
                              <div class="thumnail-text-box-user-s">
                                <p class="text-on-image thumnail-text-user-s">荻原大地</p>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="arrow_box_left">
                          ほんとかyo？
                        </div>
                    </div>
                  </div>

                  <div class="row"> <!-- answer -->
                    <div class="col-md-9">
                      <div class="arrow_box">ほんとだyo<br>
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
                        <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '160px'));?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s">新居航平</p>
                        </div>
                      </div>
                      </a>
                    </div>

                  </div> <!-- answer -->
                </div> <!-- reviewbox -->
                <!--質問１つの塊終了-->
        </div>
<!-- 質問と答え -->

  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>
  <h2>Hello</h2>

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
  chart();

  $.fn.raty.defaults.path = "../img/star-score";


  $('.default-star').raty({ readOnly: true, score: 3.3 });

</script>

<!-- slideshow_user -->
<?php echo $this->Html->script( 'slideshow_user.js', array('inline' => 'false')); ?>
