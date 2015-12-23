<!-- all-->
<div class="container">
    <div class="row">


<!-- leftside content -->
<div class="col-md-9">
  <div class="content">

    <!-- user picture始 -->
    <div id="userpic">
    <div class="thumnail-box-user-s">
    <?php echo $this->Html->image('developer/kohei.jpg', array('height' => '240px'));?>
    </div>
    </div>
    <!-- user picture終 -->



<!-- スライドショー始 -->
      <div class="row">
        <div class="col-md-8" >





            <div class="slideShow">
            <div class="mainView">
            <ul>
            <li><a href="#1"><?php echo $this->Html->image('university/ghent.jpg', array('height' => '450px'));?></a></li>
            <li><a href="#2"><?php echo $this->Html->image('sample/photo2.jpg');?></a></li>
            <li><a href="#3"><?php echo $this->Html->image('sample/photo3.jpg');?></a></li>
            <li><a href="#4"><?php echo $this->Html->image('sample/photo4.jpg');?></a></li>
            <li><a href="#5"><?php echo $this->Html->image('sample/photo5.jpg');?></a></li>
            <li><a href="#6"><?php echo $this->Html->image('sample/photo6.jpg');?></a></li>
            </ul>
            </div><!--/.mainView-->
            <div class="thumbNail">
            <ul>
            <li><?php echo $this->Html->image('university/ghent.jpg', array('height' => '83px'));?></li>
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




<!-- user about始 -->
<!-- user about終 -->



<!-- self intro始 -->
<!-- self intro終 -->


<!-- user 留学報告書DL始 -->
<!-- user 留学報告書DL終 -->










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


<!-- 項目別レビュー -->
      <div id="basic">
        <div class="container">
          <div class="row centered">
            <div class="col-md-9">
              <h4>項目別レビュー</h4>
            </div>
          </div>
        </div> <!-- row1 -->
          </div>

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


