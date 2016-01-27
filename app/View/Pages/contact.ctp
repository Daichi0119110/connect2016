<div class="container">
  <div class="row">
    <div class="col-md-offset-3 col-md-6" style="margin-top:50px;margin-bottom:40px;">
    <h1 class="text-center">Contact us</h1>
    <hr id="hr-sp">
    <p >Connectのサービス向上のため、皆様からのメッセージをお待ちしております。どんな小さな要望でも構いません。開発者たちに何か伝えたいことがあれば、メッセージ送ってください。</p>
      <form method="post" action="<?php echo SITE_URL.'pages/contact_sure'; ?>">
        <div class="form-group top-margin-s">
          <label class="control-label" for="name">Name</label>
          <input type="text" id="input-name" class="form-control" placeholder="name">
          <span class="help-block"></span>
        </div>
        <div class="form-group">
          <label class="control-label" for="email" >Email</label>
          <input type="text" id="input-email" class="form-control" placeholder="email">
          <span class="help-block"></span>
        </div>
        <div class="form-group">
          <label class="control-label" for="email">Message</label>
          <textarea name="お問い合わせ内容" class="form-control" id="message" rows="5" placeholder="message"></textarea>
          <span class="help-block"></span>
        </div>
        <div class="form-group row top-margin-xs">
          <input type="submit" value="メッセージを送信" class="btn btn-primary" style="float:right;">
        </div>
      </form>
    </div>
  </div>
</div>


