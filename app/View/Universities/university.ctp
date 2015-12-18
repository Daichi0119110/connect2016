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
      <div class="container wb">
        <div class="row centered">
          <div class="col-md-9">
              <div class="input-group">
              <input type="text" class="form-control" placeholder="▲▲大学について検索">
              <span class="input-group-btn">
              <button class="btn btn-default" type="button">送信</button>
              </span>
              </div><!-- /input-group -->
          </div><!-- /.col-md-9 -->
        </div><!-- /.row -->
      </div>



    <!-- バナー -->
      <div class="container wb">
        <div class="row centered">
          <div class="col-md-9">
              <div class="input-group">
              <input type="text" class="form-control" placeholder="▲▲大学について検索">
              <span class="input-group-btn">
              <button class="btn btn-default" type="button">送信</button>
              </span>
              </div><!-- /input-group -->
          </div><!-- /.col-md-9 -->
        </div><!-- /.row -->
      </div>



    <!-- 項目別スコア -->
      <div id="basic">
        <div class="container">
          <div class="row centered">
            <div class="col-md-9">
              <h4>項目別スコア</h4>
            </div>
          </div>


                <!-- score -->
          <div class="row centered">
                <div class="col-md-4 col-md-offset-1"> <!-- graph -->
                </div><!-- /col-md-4 -->

                <div class="col-md-2"> <!-- 5star -->
                </div><!-- /col-md-2 -->

                <div class="col-md-2"> <!-- 5star -->
                </div><!-- /col-md-2 -->
          </div><!-- row -->
        </div><!-- container -->
      </div><!-- BASIC -->


<!-- 項目別レビュー -->
      <div id="basic">
        <div class="container">
          <div class="row centered">
            <div class="col-md-9">
              <h4>項目別レビュー</h4>
            </div>
          </div>



    <!-- photo section -->
          <!-- row1 -->
        <div class="row centered">
          <div class="col-md-3"> <!-- 1-->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_travel.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">旅行</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 2 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_environment.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">環境</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 3 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_money.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">物価</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->
        </div> <!-- row1 -->

          <!-- row2 -->
        <div class="row centered">
          <div class="col-md-3"> <!-- 1-->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_apartment.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">住居</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 2 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_food.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">食事</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 3 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_safety.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">安全</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->
        </div>  <!-- row2 -->

          <!-- row3 -->
        <div class="row centered">
          <div class="col-md-3"> <!-- 1-->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_study.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">授業</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 2 -->
            <a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_student.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">留学生</p>
                </div>
              </div>
            </a>
          </div><!-- /col-md-3 -->

          <div class="col-md-3"> <!-- 3 -->
<a href="">
              <div class="thumnail-box-m">
                <?php echo $this->Html->image('category/category_language.jpg');?>
                <div class="thumnail-text-box-m">
                  <p class="text-on-image-m thumnail-text-m">言語</p>
                </div>
              </div>
            </a>          </div><!-- /col-md-3 -->
        </div><!-- row3 -->
        </div><!-- container -->
      </div><!-- Basic-->
<!-- 項目別レビュー終 -->


<!-- senpai intros -->
        <div id="basic">
          <div class="container">
              <div class="row centered">
                <div class="col-md-9">
                  <h4>▲▲大学の先輩紹介</h4>
                </div>
              </div>

            <div class="row centered">
              <div class="col-md-3"> <!-- 1-->
              <h1>PIC</h1>
              <h1>A1</h1>
              </div><!-- /col-md-3 -->

              <div class="col-md-3"> <!-- 2 -->
              <h1>PIC</h1>
              <h1>A2</h1>
              </div><!-- /col-md-3 -->

              <div class="col-md-3"> <!-- 3 -->
              <h1>PIC</h1>
              <h1>A3</h1>
              </div><!-- /col-md-3 -->
            </div>
          </div><!-- container -->
        </div><!-- basic -->
<!-- senpai intros -->



      <!-- pickup review -->
        <div id="basic">
          <div class="container">
            <div class="row centered">
              <div class="col-md-9">
                <h4>ピックアップレビュー</h4>
              </div>
            </div>

            <div class="row pull-left">
              <div class="col-md-9">
                <h1>PIC</h1>
                <h1>A1</h1>
              </div><!-- /col-md-9 -->
            </div>
          </div><!-- container -->
      </div><!-- basic -->
<!-- pickup review -->

<!-- pdfダウンロード始 -->
      <!-- pickup review -->
        <div id="basic">
          <div class="container">
            <div class="row centered">
              <div class="col-md-9">
                <h4>先輩たちの留学報告書</h4>
              </div>
            </div>

            <div class="row pull-left">
              <div class="col-md-9">
                <h1>PIC</h1>
                <h1>A1</h1>
              </div><!-- /col-md-9 -->
            </div>
          </div><!-- container -->
      </div><!-- basic -->



<!-- pdfダウンロード終 -->



  </div>
</div>
<!-- leftside contents終 -->


<!-- sidebar -->

 <div class="col-md-2 col-md-offset-1">
  <div class="sidebar">
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


 <!--    // <script src="assets/js/skrollspy.js"></script> -->
    <script>
            $(function(){

                $('nav.affix-nav').affix({
                    offset:{
                        top: 50,
                        bottom:50
                    }
                }).on('affix.bs.affix', function () {
                    $(this).css({
                            'top': '0'
                    });
                    console.log('affix.bs.affix');
                }).on('affixed.bs.affix', function(){
                    console.log('affixed.bs.affix');
                }).on('affix-bottom.bs.affix', function(){
                    console.log('affix-bottom.bs.affix');
                }).on('affixed-bottom.bs.affix', function(){
                    console.log('affixed-bottom.bs.affix');
                });
                $('body').scrollspy({ target: 'nav.affix-nav' })
            });
    </script>

    <!-- For slideshow -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
$(function(){
    $(window).load(function(){
        var setWrap = $('.slideShow'),
        setMainView = $('.mainView'),
        setThumbNail = $('.thumbNail'),
        setMaxWidth = 800,
        setMinWidth = 320,
        thumbNum = 6,
        thumbOpc = 0.5,
        fadeTime = 1000,
        delayTime = 5000,
        sideNavi = 'on', // 'on' or 'off'
        autoPlay = 'on'; // 'on' or 'off'
 
        setWrap.each(function(){
            var thisObj = $(this),
            childMain = thisObj.find(setMainView),mainUl = childMain.find('ul'),mainLi = mainUl.find('li'),mainLiFst = mainUl.find('li:first'),
            childThumb = thisObj.find(setThumbNail),thumbUl = childThumb.find('ul'),thumbLi = childThumb.find('li'),thumbLiFst = childThumb.find('li:first'),thumbLiLst = childThumb.find('li:last');
 
            thisObj.css({width:setMaxWidth,display:'block'});
 
            mainLi.each(function(i){
                $(this).attr('class','view' + (i + 1).toString()).css({zIndex:'98',opacity:'0'});
                mainLiFst.css({zIndex:'99'}).stop().animate({opacity:'1'},fadeTime);
            });
 
            thumbLi.click(function(){
                if(autoPlay == 'on'){clearInterval(setTimer);}
 
                var connectCont = thumbLi.index(this);
                var showCont = connectCont+1;
                mainUl.find('.view' + (showCont)).siblings().stop().animate({opacity:'0'},fadeTime,function(){$(this).css({zIndex:'98'});});
                mainUl.find('.view' + (showCont)).stop().animate({opacity:'1'},fadeTime,function(){$(this).css({zIndex:'99'});});
 
                $(this).addClass('active');
                $(this).siblings().removeClass('active');
 
                if(autoPlay == 'on'){timer();}
 
            });
            thumbLi.css({opacity:thumbOpc});
            thumbLiFst.addClass('active');
 
            // メイン画像をベースにエリアの幅と高さを設定
            var mainLiImg = mainLi.find('img'),
            baseWidth = mainLiImg.width(),
            baseHeight = mainLiImg.height();
 
            // レスポンシブ動作メイン
            imgSize();
            function imgSize(){
                var windowWidth = parseInt($(window).width());
                if(windowWidth >= setMaxWidth) {
                    thisObj.css({width:setMaxWidth});
                    childMain.css({width:baseWidth,height:baseHeight});
                    mainUl.css({width:baseWidth,height:baseHeight});
                    mainLi.css({width:baseWidth,height:baseHeight});
                    thumbLi.css({width:((setMaxWidth)/(thumbNum))});
                } else if(windowWidth < setMaxWidth) {
                    if(windowWidth >= setMinWidth) {
                        thisObj.css({width:'100%'});
                        childMain.css({width:'100%'});
                        mainUl.css({width:'100%'});
                        mainLi.css({width:'100%'});
                    } else if(windowWidth < setMinWidth) {
                        thisObj.css({width:setMinWidth});
                        childMain.css({width:setMinWidth});
                        mainUl.css({width:setMinWidth});
                        mainLi.css({width:setMinWidth});
                    }
                    var reHeight = mainLiImg.height();
                    childMain.css({height:reHeight});
                    mainUl.css({height:reHeight});
                    mainLi.css({height:reHeight});
 
                    var reWidth = setThumbNail.width();
                    thumbLi.css({width:((reWidth)/(thumbNum))});
                }
            }
            $(window).resize(function(){imgSize();});
            imgSize();
 
            // サムネイルマウスオーバー
            var agent = navigator.userAgent;
            if(!(agent.search(/iPhone/) != -1 || agent.search(/iPad/) != -1 || agent.search(/iPod/) != -1 || agent.search(/Android/) != -1)){
                thumbLi.hover(function(){
                    $(this).stop().animate({opacity:'1'},200);
                },function(){
                    $(this).stop().animate({opacity:thumbOpc},200);
                });
            }
 
            // ボタン移動動作
            function switchNext(){
                var setActive = thumbUl.find('.active');
                setActive.each(function(){
                    var listLengh = thumbLi.length,
                    listIndex = thumbLi.index(this),
                    listCount = listIndex+1;
 
                    if(listLengh == listCount){
                        thumbLiFst.click();
                    } else {
                        $(this).next('li').click();
                    }
                });
            }
            function switchPrev(){
                var setActive = thumbUl.find('.active');
                setActive.each(function(){
                    var listLengh = thumbLi.length,
                    listIndex = thumbLi.index(this),
                    listCount = listIndex+1;
 
                    if(1 == listCount){
                        thumbLiLst.click();
                    } else {
                        $(this).prev('li').click();
                    }
                });
            }
 
            // サイドナビボタン(有り無し)
            if(sideNavi == 'on'){
                childMain.append('<a href="javascript:void(0);" class="btnPrev"></a><a href="javascript:void(0);" class="btnNext"></a>');
                var btnPrev = thisObj.find('.btnPrev'),btnNext = thisObj.find('.btnNext'),btnPrevNext = thisObj.find('.btnPrev,.btnNext');
                if(!(agent.search(/iPhone/) != -1 || agent.search(/iPad/) != -1 || agent.search(/iPod/) != -1 || agent.search(/Android/) != -1)){
                    btnPrevNext.css({opacity:thumbOpc}).hover(function(){
                        $(this).stop().animate({opacity:'0.9'},200);
                    },function(){
                        $(this).stop().animate({opacity:thumbOpc},200);
                    });
                } else {
                    btnPrevNext.css({opacity:thumbOpc});
                }
                btnPrev.click(function(){switchPrev();});
                btnNext.click(function(){switchNext();});
            }
 
            // 自動再生(有り無し)
            if(autoPlay == 'on'){
                function timer(){
                    setTimer = setInterval(function(){
                        switchNext();
                    },delayTime);
                }
                timer();
            }
        });
    });
});
</script>


