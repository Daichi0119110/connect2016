  (function(window, $) {
    'use strict';
    $(function() {
      // スクロール位置と連動させない場合は不要(scrollspy用)
      $(document.body).scrollspy({ target: '.sidebar' });

      // スクロール位置と連動させない場合は不要(scrollspy用)
      $(window).on('load', function() { $(document.body).scrollspy('refresh') });

      // 固定サイドバーのスクロール追従開始&終了位置の設定(affix用)
      setTimeout(function() {
        $('.sidebar').affix({
          offset: {
            top: function() {
              return (this.top = $('header').outerHeight(true));
            },
            bottom: function() {
              return (this.bottom = $('footer').outerHeight(true));
            }
          }
        })
      }, 100);
    });
  })(window, jQuery);