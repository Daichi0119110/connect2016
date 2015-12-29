<body data-spy="scroll" data-target=".sidebar" data-offset="70" id="top">

<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">


<div class="clearfix">
  <div class="page-title">Arai Kohei </div><p class="favorite-btn fa fa-heart"> お気に入り登録</p><div class="page-sub-title">--- ゲント大学へ留学 ---</div>
</div>



    <!-- user picture始 -->
    <div id="userpic">
    <div class="thumnail-box-user-profile">
    <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?>
    </div>
        <div class="change btn-group" role="group">
            <a href="#" class="btn btn-default" role="button">プロフィール画像を変更</a>
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
          <div id="image">
          <div class="upload btn-group" role="group">
              <a href="#" class="btn btn-default bule-button" role="button">留学中の写真をアップロード</a>
          </div>
          </div>
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
  <div class="col-md-5">
    <div id="about">
             <table class="table profile-basicinfo">
                 <tbody>
                  <tr>
                   <th>名前</th>
                   <td>
                     <div class="form-group">
                       <input type="text" class="form-control form-edit-s" value="Arai Kohei">
                   </div>
                  </td>
                  </tr>
                  <tr>
                   <th>性別</th>
                   <td>
                      <div class="form-group">
                      <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                            男性
                          </label>
                      </div>
                      <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                            女性
                          </label>
                      </div>
                   </td>
                  </tr>
                  <tr>
                   <th>留学期間</th>
                   <td>
                      <div class="input-daterange input-group" id="datepicker">
                          <input type="text" class="input-sm form-control form-edit-xs-left" name="start" />
                          <span class="input-group-addon">to</span>
                          <input type="text" class="input-sm form-control form-edit-xs-right" name="end" />
                      </div>

                   </td>
                  </tr>
                  <tr>
                    <th>大学・学年</th>
                    <td>
                    <div class="form-group">
                       <input type="text" class="form-control form-edit-s" value="東京工業大学・4年">
                    </div>
                    </td>
                   </tr>
                  <tr>
                   <th>専攻</th>
                   <td>
                     <div class="form-group">
                       <input type="text" class="form-control form-edit-s" value="経営システム工学">
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
            <textarea type="text" class="form-control form-edit-l">こんにちは。ゲント大学に留学してました、新居です。自分自身、留学する時の情報集めで戸惑いました。ぜひ気軽に質問してください！</textarea>
        </div>

      </div>
    </div>
<!-- self intro終 -->


<!-- user 留学報告書DL始 -->
    <div id="about-sub-2" class="top-margin-s centered">
      <a href=""><h3><i class="fa fa-download fa-1x"></i>留学報告書をダウンロード</h3></a>


    <div class="btn-group" role="group">
        <a href="#" class="btn btn-default bule-button" role="button">削除する</a>
        <a href="#" class="btn btn-default bule-button" role="button">ダウンロード</a>
        <a href="#" class="btn btn-default bule-button" role="button">追加アップロード</a>
    </div>

    </div>
<!-- user 留学報告書DL終 -->

</div>
</div><!-- userinfo -->

<hr>

<!-- 項目別スコア -->
        <div id="score" class="top-margin-m ">

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
      <div id="review" class=" row">
      <h2>レビュー</h2>
                <!--旅行-->
                <div id="review-sub-1" class="top-margin-xs">
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">国内旅行に関しては、学生限定で国内のどこでも片道５ユーロ程度でいける特別電車乗車券があり、週末を利用してよく国内旅行へ出かけている。海外旅行に関しても、ベルギーはヨーロッパの中心にあることから、ヨーロッパであればどこでも比較的にアクセスしやすいと言える。ゲントから空港までもシャトルバスが出ており、簡単に空港にたどり着くことができる。</textarea>
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
                <!--旅行終了-->
                <!--環境-->
                <div id="review-sub-2" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_environment.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">環境</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--環境終了-->
                <!--物価の塊-->
                <div id="review-sub-3" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_money.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">物価</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--物価の塊終了-->
                  <!--住居の塊-->
                <div id="review-sub-4" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_apartment.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">住居</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--住居の塊終了-->
                <!--食事の塊-->
                <div id="review-sub-5" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_food.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">食事</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--食事の塊終了-->
                  <!--安全の塊-->
                <div id="review-sub-6" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_safety.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">安全</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--安全の塊終了-->
                  <!--授業の塊-->
                <div id="review-sub-7" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_study.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">授業</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--授業の塊終了-->
                  <!--留学生の塊-->
                <div id="review-sub-8" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_student.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">留学生</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--留学生の塊終了-->
                <!--言語の塊-->
                <div id="review-sub-9" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/category_language.jpg', array('height' => '120px'));?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s">言語</p>
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
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">入力をお願いします</textarea>
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
                <!--言語の塊終了-->
    </div>
<!-- レビュー終 -->

<hr>

<!-- 質問と答え -->
      <div id="question" class=" row">
              <h2>Q&A</h2>
                <!--質問１つの塊-->
                <div id="question-sub-1" class="question-box ">
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
                  <div class="row"> <!-- answer -->

                    <div class="col-md-9">
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">夜は川辺が綺麗でロマンチック。ビールなどを片手に友達と行くのがおすすめ！また、電車で２０分のBrugeはベルギーのベネチアと呼ばれ、日本人女性観光客にかなりおすすめの町である。</textarea>
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
                <!--質問１つの塊終了-->

                <!--質問１つの塊-->
                <div id="question-sub-2" class="question-box ">
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
                  <div class="row"> <!-- answer -->

                    <div class="col-md-9">
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" class="form-control form-edit-l">夜は川辺が綺麗でロマンチック。ビールなどを片手に友達と行くのがおすすめ！また、電車で２０分のBrugeはベルギーのベネチアと呼ばれ、日本人女性観光客にかなりおすすめの町である。</textarea>
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


<script>
$('#datepicker').datepicker({
format: "yyyy年mm月",
language: "ja",
autoclose: true,
orientation: "bottom auto"
});
</script>