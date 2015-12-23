<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">
  <div class="content">

    <!-- user picture始 -->
    <div id="userpic">
    <div class="thumnail-box-user-profile">
    <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?>
    </div>
    </div>
    <!-- user picture終 -->



<!-- スライドショー始 -->
<div id="about">
      <div class="row">
        <div class="col-md-8" >

            <div class="slideShow">
            <div class="mainView">
            <ul>
            <li><a href="#1"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
            <li><a href="#2"><?php echo $this->Html->image('sample/photo2.jpg', array('height' => '450px'));?></a></li>
            <li><a href="#3"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
            <li><a href="#4"><?php echo $this->Html->image('sample/photo4.jpg', array('height' => '450px'));?></a></li>
            <li><a href="#5"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
            <li><a href="#6"><?php echo $this->Html->image('sample/photo6.jpg', array('height' => '450px'));?></a></li>
            </ul>
            </div><!--/.mainView-->

            <div class="thumbNail">
            <ul>
            <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '90px'));?></li>
            <li><?php echo $this->Html->image('sample/photo2.jpg', array('height' => '90px'));?></li>
            <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '90px'));?></li>
            <li><?php echo $this->Html->image('sample/photo4.jpg', array('height' => '90px'));?></li>
            <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '90px'));?></li>
            <li><?php echo $this->Html->image('sample/photo6.jpg', array('height' => '90px'));?></li>
            </ul>
            </div><!--/.thumbNail-->

            </div><!--/.slideShow-->
        </div>
      </div><!-- row -->
</div>



<!-- user about始 -->
<!-- user about終 -->



<!-- self intro始 -->
<!-- self intro終 -->


<!-- user 留学報告書DL始 -->
<!-- user 留学報告書DL終 -->










<!-- 項目別スコア -->
<div id="score" class="top-margin-m">
  <h2 class="">ゲント大学のスコア</h2>
  <div class="row">
  <div class="col-md-5">
          <div class="canvas-s top-margin-xs">
              <canvas id="canvas"></canvas>
          </div>
  </div>

<div class="score-total-s">レビュー総合評価　3.4<span class="default-star-s"></span><span style="margin-left:30px;font-size:12px;">回答者:6人</span></div>

  <div class="col-md-7">
        <table class="table score-table-s">
          <tbody>
           <tr>
            <th>旅行のしやすさ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>町の過ごしやすさ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>大学キャンパスの快適さ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>授業レベルの高さ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>治安の良さ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>食事面での満足度</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>住居環境の良さ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
          <tr>
            <th>物価の手軽さ</th>
            <td>3.4<span class="default-star-s"></span></td>
          </tr>
        </tbody>
      </table>
  </div>
</div>
</div>


<!-- レビュー始 -->
    <div id="review">
      <div class="row centered top-margin-m">
      <h4>レビュー</h4>

                <!--レビュー１つの塊-->
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
                <!--レビュー１つの塊終了-->
    </div>
  </div>
<!-- レビュー終 -->

<!-- 質問と答え -->
      <div id="question" class="top-margin-m">
          <div class="row centered">
              <h4>Q&A</h4>
                <!--レビュー１つの塊-->
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
                  <div class="row"> <!-- answer -->
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

                  </div> <!-- answer -->
                </div> <!-- reviewbox -->
                <!--レビュー１つの塊終了-->
          </div>
        </div>
<!-- 質問と答え -->



  </div>
</div>
<!-- leftside contents終 -->


<!-- sidebar -->

 <div class="col-md-2 col-md-offset-1">
  <div class="sidebar-nav affix">
    <nav class="affix-nav">
        <ul class="nav">
            <li><a href="#about">基本情報</a></li>
            <li><a href="#score">スコア</a></li>
            <li><a href="#review">レビュー</a></li>
            <li><a href="#question">質問の答え</a></li>
        </ul>
    </nav>
  </div>
</div>

    </div> <!-- all row-->
</div> <!-- all container-->

<script>
  chart();

  $.fn.raty.defaults.path = "../../img/star-score";


  $('.default-star-s').raty({ readOnly: true, score: 3.3 });

</script>


