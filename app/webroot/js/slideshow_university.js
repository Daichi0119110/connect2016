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