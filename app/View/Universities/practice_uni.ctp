<br>

<h1><button id="clip1" data-review-id="1">Clip</button></h1>
<br>
<h1><button id="clip2" data-review-id="2">Clip</button></h1>
<br>
<h1><button id="clip3" data-review-id="3">Clip</button></h1>
<br>

<br>

<script>
$(function() {
  // ページ読み込み時
  $.post('/connect2016/clips/ready/',
    {'user_id':1}
    ,function(res){
      $.each(res, function(){
          $('#clip'+this).html('すでにClipされています');
      });
    }, "json");

  // clipボタン押したら
  $('button').click(function(e){
    $.post('/connect2016/clips/change/',
      {'user_id':1, 'review_id':$(this).data('review-id'),}
      ,function(res){
        if(res.flg == 1){
          $("#clip"+res.id).html('すでにClipされています');
        } if(res.flg == 0){
          $("#clip"+res.id).html('Clip');
        }
    }, "json");
  });
});
</script>