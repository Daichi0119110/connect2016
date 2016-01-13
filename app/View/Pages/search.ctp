<div class="container">
  <div class="row">
    <h2 class="page-title">ゲント大学内の情報検索</h2>
   <a href="" class="page-sub-title" style="margin:25px 0 0 20px;">>>ゲント大学のページに戻る</a>
 </div>
    <div class="col-md-offset-1 col-md-10 top-margin-s">
    <span>ゲント大学に関する情報をキーワードから検索できます</span>
    <div class="input-group">
          <input type="text" class="form-control search-l" placeholder="ゲント大学に関連する情報を検索（例：visaは簡単に取れますか？)">
          <span class="input-group-btn">
            <button class="btn btn-default search-btn-l" type="button">
              <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </span>
        </div><!-- /input-group -->
  </div> <!--検索ボックス終了-->


  <div>

        <?php foreach($categories as $category) { ?>
        <div class="review-box top-margin-s">
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
          <div class="row">
            <div class="col-md-9">
              <div class="arrow_box"><?php echo $category['Pickup']['Review']['content']; ?><br>
                <div class="row">
                    <p class="favorite-btn float-right fa fa-pencil-square-o" id="review<?php echo $category['Pickup']['Review']['id']; ?>" data-review-id="<?php echo $category['Pickup']['Review']['id']; ?>"> クリップ</p>
                    <!-- span要素にclickイベントが聞いていない -->
              </div>
            </div>
            </div>
            <div class="col-md-3">
              <a href="">
              <div class="thumnail-box-user-s">
                <?php echo $this->Html->image('user/'.$category['Pickup']['Review']['User']['image'], array('height' => '160px'));?> <!-- 写真 -->
                <div class="thumnail-text-box-user-s">
                  <p class="text-on-image thumnail-text-user-s"><?php echo $category['Pickup']['Review']['User']['name']; ?></p>
                </div>
              </div>
              </a>
            </div>
          </div>
          <div class="row">
          <p class="view-more-btn">▼▼ 同項目のレビューを見る ▼▼</p>
        </div>
        </div>
        <?php } ?>

      </div>
      <!-- pickup review -->    



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
                  <div class="row"> <!-- answer -->
                    
                    
                  </div> <!-- answer -->
                </div> <!-- questionbox -->
  
</div>

<script>
  // ボタン関連
$(function() {
  // ページ読み込み時
  $.post('/connect2016/clips/ready/',
    {'user_id':1} // 要変更
    ,function(res){
      $.each(res, function(){
          $('#review'+this).html('すでにClipされています');
      });
    }, "json");

  $.post('/connect2016/favoriteunis/ready/',
    {'user_id':1, 'university_id':1} // 要変更
    ,function(res){
      if(res == 1){
        $('p.favorite-btn').html('お気に入り済み');
      } 
    }, "json");

  // clipボタン押したら
  $('.button-text').click(function(e){
    $.post('/connect2016/clips/change/',
      {'user_id':1, 'review_id':$(this).data('review-id')} // 要変更
      ,function(res){
        if(res.flg == 1){
          $("#review"+res.id).html('すでにClipされています');
        } if(res.flg == 0){
          $("#review"+res.id).html('Clip');
        }
    }, "json");
  });

</script>