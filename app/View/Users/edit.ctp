<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">

<form action="<?php echo SITE_URL.'users/mypage'; ?>" method="post"> <!-- formの開始 -->

<div class="clearfix">
  <div class="page-title"><?php echo $user['name']; ?> </div><div class="page-sub-title"><?php if($user['university_id']){ ?>--- <?php echo $university['university']; ?>へ留学 ---<?php } ?></div><button type="submit" class="favorite-btn fa fa-floppy-o"> 変更を保存</button>
</div>



    <!-- user picture始 -->
    <div id="userpic">
    <div class="thumnail-box-user-profile">
    <?php echo $this->Html->image('user/'.$user['image'], array('height' => '240px')); ?>
    </div>
    </div>
    <!-- user picture終 -->


<!-- スライドショー始 -->
      <div class="row">

            <div class="slideShow">
                  <div class="mainView">
                    <ul>
                      <?php $i = 0; ?>
                      <?php foreach ($pictures as $picture) { ?>
                      <?php $i++; ?>
                      <li><a href="#picture_<?php echo $i; ?>"><?php echo $this->Html->image('university/'.$picture['image'], array('height' => '450px')); ?></a></li>
                      <?php } ?>
                    </ul>
                  </div><!--/.mainView-->


                  <div class="thumbNail">
                  <div class="user">
                  <ul>
                    <?php $i = 0; ?>
                    <?php foreach ($pictures as $picture) { ?>
                    <?php $i++; ?>
                    <li id="picture_<?php echo $i; ?>"><?php echo $this->Html->image('university/'.$picture['image'], array('height' => '50px')); ?></li>
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
    <div id="about" class="top-margin-m">
             <table class="table profile-basicinfo">
                 <tbody>
                  <tr>
                   <th>名前</th>
                   <td>
                     <div class="form-group">
                       <input type="text" class="form-control form-edit-s" name="name" value="<?php echo $user['name']; ?>">
                   </div>
                  </td>
                  </tr>
                  <tr>
                   <th>性別</th>
                   <td>
                      <div class="form-group">
                      <div class="radio">
                          <label>
                            <input type="radio" name="gender" id="optionsRadios1" value="man" <?php if($user['gender']!="woman") { echo "checked"; } ?>>
                            男性
                          </label>
                      </div>
                      <div class="radio">
                          <label>
                            <input type="radio" name="gender" id="optionsRadios2" value="woman" <?php if($user['gender']=="woman") { echo "checked"; } ?>>
                            女性
                          </label>
                      </div>
                   </td>
                  </tr>
                  <tr>
                    <th>留学先大学</th>
                    <td>
                      <div class="form-group">
                    <label class="control-label">以下は留学経験者のみ選択してください。</label>
                    <div class="">
                      <select class="form-control" name="university_id">
                        <?php foreach($universities as $uni){ ?>
                        <option value="<?php echo $uni['University']['id']; ?>" <?php if($uni['University']['id'] == $user['university_id']) { echo "selected"; } ?>><?php echo $uni['University']['university']; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                    </td>
                  </tr>
                  <tr>
                   <th>留学期間</th>
                   <td>
                      <div class="input-daterange input-group" id="datepicker">
                          <input type="text" class="input-sm form-control form-edit-xs-left" name="study_start" value="<?php echo $user['study_start']; ?>">
                          <span class="input-group-addon">to</span>
                          <input type="text" class="input-sm form-control form-edit-xs-right" name="study_end" value="<?php echo $user['study_end']; ?>">
                      </div>

                   </td>
                  </tr>
                  <tr>
                    <th>学年</th>
                    <td>
                    <div class="form-group">
                       <input type="text" class="form-control form-edit-s" name="study_grade" value="<?php echo $user['study_grade']; ?>" placeholder="解答例：学部２年">
                    </div>
                    </td>
                   </tr>
                  <tr>
                   <th>専攻</th>
                   <td>
                     <div class="form-group">
                       <input type="text" class="form-control form-edit-s" name="study_major" value="<?php echo $user['study_major']; ?>" placeholder="解答例：経営工学">
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
    <div id="about-sub-1" class="top-margin-m">
    <h4><i class="fa fa-smile-o fa-1x"></i>自己紹介</h4>
      <div class="profile-selfintro-box">
        <div class="form-group">
            <textarea type="text" name="self_intro" class="form-control form-edit-l" placeholder="自分の紹介を自由にお書きください。後輩のために個別で相談乗るよ！という方はその旨も書いていただけると、コンタクトを受けやすくなります。
            
            "><?php echo $user['self_intro']; ?></textarea>
        </div>

      </div>
    </div>
<!-- self intro終 -->

<?php if($user['university_id']) { ?>

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
              </div>
              </tr>
              <?php } ?>
            </tbody>
          </table>
    </div>
<!-- user 留学報告書DL終 -->
<?php } ?>

</div>
</div><!-- userinfo -->

<hr>

<?php if($user['university_id']) { ?>

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
                 <?php for ($i=0; $i < 4; $i++) { ?>
                <tr>
                  <th><?php echo $scores[$i]['tag']; ?></th>
                  <td><span class="default-star star-<?php echo $i+1; ?>"></span></td>
                </tr>
                <input type="hidden" name="score-id-<?php echo $i; ?>" id="score-value-<?php echo $i+1; ?>" value="<?php echo $scores[$i]['score']; ?>">
                <?php } ?>
              </tbody>
            </table>
          </div>
          <div class="col-md-6">
            <table class="table score-table">
              <tbody>
               <?php for ($i=4; $i < 8; $i++) { ?>
                <tr>
                  <th><?php echo $scores[$i]['tag']; ?></th>
                  <td><span class="default-star star-<?php echo $i+1; ?>"></span></td>
                </tr>
                <input type="hidden" name="score-id-<?php echo $i; ?>" id="score-value-<?php echo $i+1; ?>" value="<?php echo $scores[$i]['score']; ?>">
                <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div><!-- BASIC -->


<hr>

<!-- レビュー始 -->
      <div id="review" class=" row">
      <h2>レビュー</h2>
                <?php for ($i=0; $i < 9; $i++) { ?>
                <div id="review-sub-<?php echo $i; ?>" class="top-margin-xs">
                <div class="review-box">
                  <div class="row">
                    <div class="col-md-3">
                          <div class="thumnail-box-s review-picture">
                              <?php echo $this->Html->image('category/'.$categories[$i]['Category']['image'], array('height' => '120px')); ?>
                              <div class="thumnail-text-box-s">
                                <p class="text-on-image thumnail-text-s"><?php echo $categories[$i]['Category']['category']; ?></p>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-9 review-question-area">
                      <h3 class="review-discription"><?php echo $categories[$i]['Category']['supplement']; ?></h3>
                      <p class="review-question">Question: <br>
                      <?php echo $categories[$i]['Category']['question']; ?></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-9">
                      <div class="arrow_box">
                        <div class="form-group">
                            <textarea type="text" name="review-<?php echo $i+1; ?>" class="form-control form-edit-l" placeholder="解答例：<?php echo $categories[$i]['Category']['example']; ?>"><?php for ($j=0; $j < count($reviews); $j++) {
                                  if($reviews[$j]['category_id'] == $categories[$i]['Category']['id']) { echo $reviews[$j]['content']; break; } } ?></textarea>
                                <?php if($reviews[$j]['category_id'] == $categories[$i]['Category']['id']) { ?>
                                <input type="hidden" name="review-id-<?php echo $i+1; ?>" value="<?php echo $reviews[$j]['id']; ?>">
                                <?php } ?>

                        </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('user/'.$user['image'], array('height' => '160px')); ?> <!-- 写真 -->
                        <div class="thumnail-text-box-user-s">
                          <p class="text-on-image thumnail-text-user-s"><?php echo $user['name']; ?></p>
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
                              <?php echo $this->Html->image('user/'.$answer['Question']['user']['image'], array('height' => '100px')); ?>
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
                            <textarea type="text" name="answer-<?php echo $answer['id']; ?>" class="form-control form-edit-l"><?php echo $answer['answer']; ?></textarea>
                            <input type="hidden" name="answer-id-<?php echo $answer['id']; ?>" value="<?php echo $answer['id']; ?>">
                        </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                      <a href="">
                      <div class="thumnail-box-user-s">
                        <?php echo $this->Html->image('user/'.$answer['User']['image'], array('height' => '160px')); ?> <!-- 写真 -->
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
<?php } ?>
</div>
<!-- leftside contents終 -->


</form> <!-- formの終了 -->

<!-- sidebar -->
      <div class="col-md-3" role="complementary">

        <nav class="sidebar hidden-print" data-offset-top="999">
          <ul class="nav">

        <a href="https://www.facebook.com/<?php echo $user['facebook_id']; ?>">
          <div class="thumnail-box-m">
            <?php echo $this->Html->image('user/'.$user['image'], array('height' => '300px')); ?>
            <div class="thumnail-text-box-m">
                <p class="text-on-image thumnail-text-m"><?php echo $user['name']; ?>さんのFacebook</p>
            </div>
          </div>
        </a>

            <li>
              <a href="#about">▶about</a>
            </li>
            <?php if($user['university_id']) { ?>
            <li>
              <a href="#score">▶評価</a>
            </li>
             <li>
              <a href="#review">▶レビュー</a>
              <ul class="nav">
                <?php for ($i=0; $i < 9; $i++) { ?>
              <li><a href="#review-sub-<?php echo $i; ?>"><?php echo $categories[$i]['Category']['category']; ?></a></li>
              <?php } ?>
              </ul>
            </li>
             <li>
              <a href="#question">▶Q&A</a>
              <ul class="nav">
              </ul>
            </li>
            <?php } ?>
          </ul>
        </nav>
      </div>
<!-- sidebar end -->


    </div> <!-- all row-->
</div> <!-- all container-->

<div class="modal fade message-modal" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">海外留学経験者の方へ</h4>
            </div>
            <div class="modal-body">
              <p>Connectへの会員登録ありがとうございます。海外留学経験者の方は是非、その貴重な体験を未来の後輩たちに書き残してあげてください。
              <ul>
                <li>留学先大学のスコア評価</li>
                <li>留学先大学のレビュー記入</li>
                <li>留学時の写真のアップロード</li>
              </ul>
              <br>
              など、あなたの経験が未来の後輩への大切な情報へと変わります。<br><br>
              「My page」→ 画面上の「編集」をクリック→「変更を保存」の操作でいつでも、情報の更新ができます！
            </p>
            <strong>まずは、自分に関する情報を記入してみましょう！</strong>
            </div>
            <div class="modal-footer">
              <button class="btn btn-primary">OK!</button>
            </div>
          </div>
        </div>
      </div>

<script>
  $(document).ready(function(){
    // ここに実際の処理を記述します。
    $('#myModal').modal();
  });
</script>


<script>
function chart(){
  var radarChartData = {
    labels: [<?php for ($i=0; $i < 8; $i++){ 
      echo '"'.$scores[$i]['tag'].'"';
      if($i != 7){
       echo ","; 
     } } ?>],
    datasets: [
      { //このかっこの塊をコピーすれば,二つ以上のデータを一つの中にいれられる。
        label: "<?php echo $university['university']; ?>の平均スコア",
        fillColor: "rgba(25,51,192,0.2)",//レーダーの中身の色
        strokeColor: "rgba(25,51,192,0.8)",//レーダーのborderの色
        pointColor: "rgba(25,51,192,1)",//レーダーの頂点の色
        pointStrokeColor: "rgba(25,51,192,1)",
        pointHighlightFill: "rgba(25,51,192,1)",
        pointHighlightStroke: "rgba(25,51,192,1)",
        data: [<?php for ($i=0; $i < 8; $i++){ 
          echo '"'.$scores[$i]['score'].'"';
          if($i != 7){
           echo ","; 
         } } ?>]
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
  <?php for ($i=1; $i < 9; $i++) { ?>
  $('.star-<?php echo $i; ?>').raty({ score: <?php echo $scores[$i-1]['score']; ?> });
  <?php } ?>
<?php for ($i=1; $i < 9; $i++) { ?>
$('.star-<?php echo $i; ?>').click(function(){
var score<?php echo $i; ?> = $('.star-<?php echo $i; ?>').raty('score');
$('#score-value-<?php echo $i; ?>').val(score<?php echo $i; ?>);
});
<?php } ?>


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