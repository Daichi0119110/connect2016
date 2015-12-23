<!DOCTYPE html>
<html lang="ja">
<body>

  <div id="headerwrap">
    <div class="container">
     <div class="row centered">
      <div class="col-md-8 col-md-offset-2">
        <h1 class="title">Connect</h1>
        <h2 class="">留学生をつなぐ架け橋</h2>
      </div>

      <div class="col-md-4 col-md-offset-4 top-margin-s">
        <div class="input-group">
          <input type="text" class="form-control search-m" placeholder="知りたい大学を検索">
          <span class="input-group-btn">
            <button class="btn btn-default search-btn-m" type="button">
              <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </span>
        </div><!-- /input-group -->
      </div>
      <div class="col-md-10 col-md-offset-1 top-margin-l">
        <div class="row">
          <div class="col-md-6">
            <a href="#whatconnect" class="btn btn-default btn-ghost page-scroll top-nav">Connectとは？</a>
          </div>
          <div class="col-md-6">
            <a href="#search" class="btn btn-default btn-ghost page-scroll top-nav">掲載大学一覧へ</a>

          </div>
        </div>
      </div>
    </div>
  </div>
</div><!-- headerwrap -->



<div class="container wb" id="whatconnect">
  <div class="row centered">
    <br><br>
    <div class="col-md-8 col-md-offset-2">
      <h2>What's Connect</h2>
      <hr>
      <p><strong>Connect</strong>とは、海外留学経験を持つ日本人学生と,これから大学留学に行きたい日本人学生を繋げるプラットフォームです。大学への長期留学では、留学先の選択は非常に個人にとって重要な決断にもかかわらず、今までは、知人の留学経験者から直接話を聞くことでしか、留学の生の声を聞くことができませんでした。<strong>Conncet</strong>を通して、留学経験者と未来の留学生をつなげていきたいと思っています。</p>
    </div>
  </div><!-- row -->
</div><!-- container -->

<div id="dg">
 <div class="container w">
  <div class="row centered">
    <div class="col-md-8 col-md-offset-2">
      <h2>Connectの特性</h2>
    </div>
    <div class="row top-margin-m">
      <div class="col-md-4">
        <i class="fa fa-search"></i>
        <h3>Search</h3>
        <p>海外大学への留学に関する情報を簡単に検索することができます。すべての書き込みは、実際の留学生の体験談だから、まるで先輩に話を聞いているような生の声を検索できます。</p>
      </div><!-- col-md-4 -->

      <div class="col-md-4">
        <i class="fa fa-clipboard"></i>
        <h3>Store</h3>
        <p>気に入ったページを"お気に入り登録”、そして気になった情報を"クリップ”として、後で簡単に見返すことができます。しっかり考えて、自分にとって最適な留学先大学の決定を目指してください！</p>
      </div><!-- col-md-4 -->

      <div class="col-md-4">
        <i class="fa fa-facebook-square"></i>
        <h3>Connect</h3>
        <p>実際の留学生に直接相談したい！そんな時には、<strong>Facebook</strong>を通じて先輩にメッセージを送ることができます。<strong>Facebook Messenger</strong>や,<strong>Skype</strong>にて通話相談に乗ってもらうこともできます！</p>
      </div><!-- col-md-4 -->
    </div>

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
        <div class="col-md-8 col-md-offset-2">
          <h2>掲載大学一覧</h2>
        </div>
      </div>
    </div>

    <!--テストゾーン-->




    <!--テストゾーン-->

    <div class="container wb">
      <div class="row centered">
        <div class="col-md-4 col-md-offset-4">
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
    <br>
    <br>
    <div class="container">
      <div class="row centered clearfix">
        <div class="col-md-4">
          <a href="about.html">
            <div class="thumnail-box">
              <?php echo $this->Html->image('university/ghent.jpg', array('height' => '240px'));?> <!-- 写真 -->
              <div class="thumnail-text-box">
                <p class="text-on-image thumnail-text">ゲント大学(ベルギー)</p>
              </div>
            </div>
          </a>
        </div> 
        <div class="col-md-4">
          <a href="about.html">
            <div class="thumnail-box">
              <?php echo $this->Html->image('university/seatle.jpg', array('height' => '240px'));?> <!-- 写真 -->
              <div class="thumnail-text-box">
                <p class="text-on-image thumnail-text">シアトル大学(アメリカ)</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-md-4">
          <a href="about.html">
            <div class="thumnail-box">
              <?php echo $this->Html->image('university/eth.jpg', array('height' => '240px'));?> <!-- 写真 -->
              <div class="thumnail-text-box">
                <p class="text-on-image thumnail-text">スイス連邦工科大学チューリヒ校(スイス)</p>
              </div>
            </div>
          </a>
        </div>
      </div><!-- row -->
      <br>
      <br>
    </div><!-- container -->


    <!-- FEATURE SECTION -->
    <div class="container wb">
      <div class="row centered">
        <h4>現在掲載されていない大学も,追加リクエストを送ることで今後掲載するよう努力していきます</h4>

        <div class="col-md-6 col-md-offset-3">

          <div class="input-group">
            <input type="text" class="form-control form-m" placeholder="追加したい大学を入力">
            <span class="input-group-btn">
              <button class="btn btn-default form-btn-m" type="button">大学追加リクエスト</button>
            </span>
          </div><!-- /input-group -->
          <p><br><br></p>
        </div><!-- /.col-md-6 -->
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
      <div class="col-md-4">
        <div class="tilt">
          <a href="#"><?php echo $this->Html->image('developer/kohei.jpg', array('class' => 'img-responsive img-circle'));?></a>
        </div>
        <h3>Kohei Arai</h3>
        <table class="table profile-table">
          <tbody>
           <tr>
            <th>Birthday</th>
            <td>1993/05/24</td>
          </tr>
          <tr>
            <th>Career</th>
            <td><ul>
              <li>2012年 神奈川県立湘南高校卒業</li>
              <li>2015年 東京工業大学経営システム工学科在籍</li>
            </ul></td>
          </tr>
          <tr>
            <th>Experience</th>
            <td>小学生では,メキシコに４年間在住.大学１年次に,アメリカカリフォルニアとフィリピンへ１ヶ月ずつ語学留学その後,2014年から2015年にかけてベルギーゲント大学に派遣交換留学.</td>
          </tr>
          <tr>
            <th>Love</th>
            <td>海外旅行/ランニング/読書/プログラミング</td>
          </tr>
          <tr>
            <th>Vision</th>
            <td>自分自身が留学先を決めるときに非常に苦労したこと経験が,Connectを開発しようと思ったきっかけ.東工大からゲント大学に過去に留学した人はほとんどいない為,留学前に留学先の十分な情報を得ることができなかった.これからはConnectを通して留学生のネットワークを作り,留学を志す人全員が適切に情報にアクセスし相談できる環境を作っていきたい.</td>
          </tr>
          <tr>
                <th>Facebook</th>
                <td><a href="https://www.facebook.com/kohei.arai.5"> Kohei's facebook page</a>
                </td>
              </tr>


        </tbody>
      </table>
      <p></p>
    </div>

    <div class="col-md-4">
      <div class="tilt">
        <a href="#"><?php echo $this->Html->image('developer/daichi.jpg', array('class' => 'img-responsive img-circle'));?></a>
      </div>
      <h3>Daichi Ogihara</h3>
       <table class="table profile-table">
         <tbody>
          <tr>
           <th>Birthday</th>
           <td>1994/01/19</td>
         </tr>
         <tr>
           <th>Career</th>
           <td><ul>
             <li>2012年 東京都立井草高校卒業</li>
             <li>2015年 東京工業大学機械科学科在籍</li>
           </ul></td>
         </tr>
         <tr>
           <th>Experience</th>
           <td>中学生の時にオーストラリアで10日間のホームステイを経験.大学時代にはアメリカに1か月間滞在し,アメリカ横断.ずっと楽しみにしていた交換留学は,語学力の低さから受け入れ拒否をされた経験あり.</td>
         </tr>
         <tr>
           <th>Love</th>
           <td>フットサル/ビリヤード/プログラミング</td>
         </tr>
         <tr>
           <th>Vision</th>
           <td>エンジニアとして価値のあるサービスを作り出したいと思っていたところに,connectの話を聞きjoin.現在困っている人たちの手助けになるような価値あるサービスを開発するために日々コードと奮闘中.</td>
         </tr>
 <tr>
                <th>Facebook</th>
                <td><a href="https://www.facebook.com/daichi.ogihara.9"> Daichi's facebook page</a>
                </td>
              </tr>
       </tbody>
     </table>
    </div>

    <div class="col-md-4">
      <div class="tilt">
        <a href="#"><?php echo $this->Html->image('developer/tomoko.jpg', array('class' => 'img-responsive img-circle'));?></a>
      </div>
      <h3>Tomoko Kawano</h3>
      <p>sentense</p>
    </div>
  </div><!-- row -->
</div><!-- container -->
</div><!-- DG -->

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>

  </body>
  </html>
