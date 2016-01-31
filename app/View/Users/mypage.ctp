<?php echo $this->Session->flash(); ?>
<body data-spy="scroll" data-target=".sidebar" data-offset="70" id="top">

  <!-- all-->
  <div class="container">
    <div class="row">


      <!-- leftside content -->
      <div class="col-md-9">


        <div class="clearfix scroll-fix" id="about">
          <div class="page-title"><?php echo $user['name']; ?> </div><div class="page-sub-title"><?php if($user['university_id']) { ?>--- <?php echo $university['university']?>へ留学 ---</div><?php } ?><a class="favorite-btn fa fa-floppy-o" href="<?php echo SITE_URL;?>users/edit"> 編集</a></div>


          <!-- user picture始 -->
          <div id="userpic">
            <div class="thumnail-box-user-profile">
              <?php echo $this->Html->image('user/'.$user['image'], array('height' => '240px'));?>
            </div>
 <!--    <div class="change btn-group" role="group">
      <a href="#" class="btn btn-default bule-button" style="margin:5px 0 0 5px;" role="button">プロフィール画像を変更</a>
      <?php
      // // 画像アップロード（大地作成）
      // echo $this->Form->create('Picture', array('action'=>'upload', 'type'=>'file', 'enctype' => 'multipart/form-data'));
      // echo $this->Form->input('image', array('label' => false, 'type' => 'file', 'multiple'));
      // echo $this->Form->hidden('user_id', array('value' => $user['id']));
      // echo $this->Form->hidden('university_id', array('value' => $user['university_id']));
      // echo $this->Form->hidden('folder', array('value' => 'user'));
      // echo $this->Form->hidden('comment', array('value' => NULL));
      // echo $this->Form->end('画像');
      ?>
    </div> -->
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
        <div id="image">
        </div>
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
      <div id="about-sub-1" class="scroll-fix">
       <table class="table profile-basicinfo">
         <tbody>
          <tr>
           <th>名前</th>
           <td><?php echo $user['name']; ?></td>
         </tr>
         <tr>
           <th>性別</th>
           <td><?php echo $user['gender']; ?></td>
         </tr>
         <tr>
           <th>留学期間</th>
           <td><?php echo $user['study_start']; ?>〜<?php echo $user['study_end']; ?></td>
         </tr>
         <tr>
          <th>学年</th>
          <td><?php echo $user['study_grade']; ?></td>
        </tr>
        <tr>
         <th>専攻</th>
         <td><?php echo $user['study_major']; ?></td>
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
      <?php echo $user['self_intro']; ?>
    </div>
  </div>
  <!-- self intro終 -->


  <!-- user 留学報告書upload始 -->
  <div id="about-sub-2" class="top-margin-s centered">
    <h3><i class="fa fa-download fa-1x"></i>留学写真アップロード</h3>
    <?php
                   // 画像アップロード（大地作成）
    echo $this->Form->create('Picture', array('action'=>'upload', 'type'=>'file', 'enctype' => 'multipart/form-data'));
    echo $this->Form->input('image', array('label' => false, 'type' => 'file', 'multiple'));
    echo $this->Form->hidden('user_id', array('value' => $user['id']));
    echo $this->Form->hidden('university_id', array('value' => $user['university_id']));
    echo $this->Form->hidden('folder', array('value' => 'university'));
            // echo $this->Form->text('comment',array('label'=>false,));
    echo $this->Form->end('写真送信！', array('class'=>"btn btn-default bule-button image-submit"));
    ?>


    <h3><i class="fa fa-download fa-1x"></i>留学報告書アップロード</h3>

    <table class="table score-table pdf-table">
      <thead>
      </thead>
      <tbody>
        <?php foreach($reports as $report){ ?>
        <tr>
          <td><a href="<?php echo SITE_URL.'pdf/'.$report['filename']; ?>"><?php echo $report['filename']; ?></a></td>
          <div class="btn-group" role="group">
            <td><a href="<?php echo SITE_URL.'reports/delete/'.$report['id']?>" class="btn btn-default bule-button" role="button">削除する</a></td>
          </div>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    <div class="btn-group" role="group">

      <!--レポート-->
      <a href="#" class="btn btn-default bule-button" role="button">追加アップロード</a>
      <?php echo $this->Form->create('Report', array('action' => 'upload', 'type' => 'file')); ?>
      <?php echo $this->Form->file('file'); ?>
      <?php echo $this->Form->hidden('user_id', array('value' => $user['id'])); ?>
      <?php echo $this->Form->hidden('university_id', array('value' => $user['university_id'])); ?>
      <?php echo $this->Form->end('レポート送信');?>
    </div>

  </div>
  <!-- user 留学報告書upload終 -->
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
    <div class="score-total">レビュー総合評価　<?php echo $average; ?><span class="default-star star-0"></span></div>

    <div class="col-md-6">
      <table class="table score-table">
        <tbody>
         <?php for ($i=0; $i < 4; $i++) {  ?>
         <tr>
          <th><?php echo $scores[$i]['tag']; ?></th>
          <td><?php echo $scores[$i]['score']; ?><span class="default-star star-<?php echo $i+1;?>"></span></td>
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
        <th><?php echo $scores[$i]['tag']; ?></th>
        <td><?php echo $scores[$i]['score']; ?><span class="default-star star-<?php echo $i+1;?>"></span></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
</div>
</div><!-- BASIC -->


<hr>

<?php if($user['university_id']) { ?>

<!-- レビュー始 -->
<div id="review" class="row scroll-fix">
  <h2>レビュー</h2>
  <?php for ($i=0; $i < 9; $i++) { ?>
  <!--レビュー１つの塊-->
  <div  id="review-sub-<?php echo $i; ?>" class="scroll-fix">
    <div class="review-box top-margin-s">
      <div class="row">
        <div class="col-md-3">
          <div class="thumnail-box-s review-picture">
            <?php echo $this->Html->image('category/'.$categories[$i]['Category']['image'], array('height' => '120px'));?>
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
            <?php $flg = 0; ?>
            <div class="arrow_box"><?php for ($j=0; $j < count($reviews); $j++) {
              if($reviews[$j]['category_id'] == $categories[$i]['Category']['id']) {
                echo $reviews[$j]['content'];
                $flg = 1;
              }
            }
            if($flg == 0){
              echo '<br>レビューは記入されておりません<br>';
            }
            ?>
          </div>
        </div>

        <div class="col-md-3">
          <a href="">
            <div class="thumnail-box-user-s">
              <?php echo $this->Html->image('user/'.$user['image'], array('height' => '160px'));?> <!-- 写真 -->
              <div class="thumnail-text-box-user-s">
                <p class="text-on-image thumnail-text-user-s"><?php echo $user['name'];?></p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
  <!--レビュー１つの塊終了-->
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
        <?php echo $answer['answer']; ?>
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
<?php } ?>
</div>
  </div>
<!-- leftside contents終 -->




<!-- sidebar -->
<div class="col-md-3" role="complementary">

  <nav class="sidebar hidden-print" data-offset-top="999">
    <ul class="nav">

      <a href="https://www.facebook.com/<?php echo $user['facebook_id']; ?>">
        <div class="thumnail-box-m">
          <?php echo $this->Html->image('user/'.$user['image'], array('height' => '300px'));?>
          <div class="thumnail-text-box-m">
            <p class="text-on-image thumnail-text-m"><?php echo $user['name']; ?>さんのFacebook</p>
          </div>
        </div>
      </a>

      <li>
        <a href="#about">▶about</a>
        <ul class="nav">
        </ul>
      </li>
      <li>
        <a href="#score">▶評価</a>
      </li>
      <?php if ($user['university_id']) { ?>
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

<script>
  function chart(){
    var radarChartData = {
      labels: [<?php for ($i=0; $i < 8; $i++){ 
        echo '"'.$scores[$i]['tag'].'"';
        if($i != 7){
         echo ","; 
       }}?>],
       datasets: [
      { //このかっこの塊をコピーすれば,二つ以上のデータを一つの中にいれられる。
        label: "ゲント大学の平均スコア",
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
         }}?>]
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
  $('.star-0').raty({ readOnly: true, score: <?php echo $average; ?>});
//各項目のスコア
<?php for ($i=1; $i < 9; $i++) { ?>
  $('.star-<?php echo $i; ?>').raty({ readOnly: true, score: <?php echo $scores[$i-1]['score']; ?> });
  <?php } ?>

</script>

<!-- slideshow_user -->
<?php echo $this->Html->script( 'slideshow_user.js', array('inline' => 'false')); ?>
