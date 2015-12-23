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
        <div class="wb">
          <div class="row centered">
          <h4>▼▼ ゲント大学についてキーワード検索 ▼▼</h4>
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
         
        </div>


<hr>
        <!-- 項目別スコア -->
        <div id="score" class="top-margin-m">

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

<hr>
    <!-- 項目別レビュー -->
    <div class="row centered">

      <h4>項目別レビュー</h4>
      <div class="col-md-4"> <!-- 1-->
        <a href="" >
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_travel.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">旅行</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->

      <div class="col-md-4"> <!-- 2 -->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_environment.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">環境</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->

      <div class="col-md-4"> <!-- 3 -->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_money.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">物価</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->
    </div> <!-- row1 -->

    <!-- row2 -->
    <div class="row centered">
      <div class="col-md-4"> <!-- 1-->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_apartment.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">住居</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->

      <div class="col-md-4"> <!-- 2 -->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_food.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">食事</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->

      <div class="col-md-4"> <!-- 3 -->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_safety.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">安全</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->
    </div>  <!-- row2 -->

    <!-- row3 -->
    <div class="row centered">
      <div class="col-md-4"> <!-- 1-->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_study.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">授業</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->

      <div class="col-md-4"> <!-- 2 -->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_student.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">留学生</p>
            </div>
          </div>
        </a>
      </div><!-- /col-md-3 -->

      <div class="col-md-4"> <!-- 3 -->
        <a href="">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('category/category_language.jpg');?>
            <div class="thumnail-text-box-m">
              <p class="text-on-image thumnail-text-m">言語</p>
            </div>
          </div>
        </a>          </div><!-- /col-md-3 -->
      </div><!-- row3 -->
      <!-- 項目別レビュー終 -->

<hr>
      <!-- senpai intros -->
      <div class="row centered clearfix top-margin-m">
        <h2>ゲント大学の先輩紹介</h2>
        <div class="top-margin-xs">
        </div>
        <div class="col-md-4">
          <a href="about.html">
            <div class="senpai-box">
              <div class="thumnail-box-user">
                <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?> <!-- 写真 -->
                <div class="thumnail-text-box-user">
                  <p class="text-on-image thumnail-text-user">新居航平</p>
                </div>
              </div>
              <p class="senpai-nav">2014-2015年に留学</p>
              <p>自分自身が留学先を決めるときに非常に苦労したこと経験が, Connectを開発しようと思ったきっかけ.東工大からゲント大学に過去に留学した人はほとんどいない為,留学前に留学先の十分な情報を得ることができなかった.これからはConnectを通して留学生のネットワークを作り,留学を志す人全員が適切に情報にアクセスし相談できる環境を作っていきたい.</p>
              <p class="senpai-nav-f">▼詳細を見る▼</p>
            </div>

          </a>
        </div> 
        <div class="col-md-4">
          <a href="about.html">
            <div class="senpai-box">
              <div class="thumnail-box-user">
                <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?> <!-- 写真 -->
                <div class="thumnail-text-box-user">
                  <p class="text-on-image thumnail-text-user">新居航平</p>
                </div>
              </div>
              <p class="senpai-nav">2014-2015年に留学</p>
              <p>自分自身が留学先を決めるときに非常に苦労したこと経験が, Connectを開発しようと思ったきっかけ.東工大からゲント大学に過去に留学した人はほとんどいない為,留学前に留学先の十分な情報を得ることができなかった.これからはConnectを通して留学生のネットワークを作り,留学を志す人全員が適切に情報にアクセスし相談できる環境を作っていきたい.</p>
              <p class="senpai-nav-f">▼詳細を見る▼</p>
            </div>

          </a>
        </div>
        <div class="col-md-4">
          <a href="about.html">
            <div class="senpai-box">
              <div class="thumnail-box-user">
                <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?> <!-- 写真 -->
                <div class="thumnail-text-box-user">
                  <p class="text-on-image thumnail-text-user">新居航平</p>
                </div>
              </div>
              <p class="senpai-nav">2014-2015年に留学</p>
              <p>自分自身が留学先を決めるときに非常に苦労したこと経験が, Connectを開発しようと思ったきっかけ.東工大からゲント大学に過去に留学した人はほとんどいない為,留学前に留学先の十分な情報を得ることができなかった.これからはConnectを通して留学生のネットワークを作り,留学を志す人全員が適切に情報にアクセスし相談できる環境を作っていきたい.</p>
              <p class="senpai-nav-f">▼詳細を見る▼</p>
            </div>

          </a>
        </div>
      </div><!-- row -->
      <!-- senpai intros -->


<hr>
      <!-- pickup review -->
      <div class="row centered top-margin-m">
      <h2>ピックアップレビュー</h2>
        <!--ピックアップレビュー１つの塊-->
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
        <!--ピックアップレビュー１つの塊終了-->
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


  $('.default-star').raty({ readOnly: true, score: 3.3 });

</script>


