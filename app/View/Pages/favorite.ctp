<div class="container">
  <h2>お気に入りリスト</h2>

    <?php if($favounis){ ?>
      <!-- お気に入りに登録していれば -->
      <?php $i = 0; ?>
      <?php foreach($favounis as $favouni) { ?>
      <?php if($i%3 == 0) { echo '<div class="row top-margin-s">'; } ?>
      <?php $i = $i + 1; ?>
      <div class="col-md-4">

        <div class="favorite-box">
          <!-- <span class="delete-btn"> -->
            <!--  <?php echo $this->Html->image('delete.png', array('height' => '40px'));?>  --><!-- 写真 -->
          <!-- </span>           -->
          <div class="thumnail-box">
            <a href="<?php echo SITE_URL."universities/university/".$favouni['University']['id']; ?>">
              <?php echo $this->Html->image('university/'.$favouni['University']['image'], array('height' => '240px'));?> <!-- 写真 -->
              <div class="thumnail-text-box">
                <p class="text-on-image thumnail-text"><?php echo $favouni['University']['university']; ?>（<?php echo $favouni['University']['Country']['country']; ?>）</p>
              </div>
            </a>
          </div>
        </div>

      </div>
      <?php if($i%3 == 0){ echo '</div>'; } ?>
      <?php } ?>

    <?php } else { ?>
    <!-- お気に入りに登録していなければ -->

    <?php } ?>
  

</div>
</div>
<hr>
<h4 class="centered" style="margin:50px 0;">自分のよく見る大学やユーザのページを,お気に入り登録することができます!
</h4>
