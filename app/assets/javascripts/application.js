// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require cocoon
//= require bxslider
//= require_tree .
// = require data-confirm-modal

/*global $*/                                              //$ is not defined; please fix or add /*global $*/のエラーを消すために

// スムーススクロール機能3/3 ここから
$(function() {
    var topBtn = $('#page-top');
    topBtn.hide();
    $(window).scroll(function () {                             //スクロールが100に達したらボタン表示
        if ($(this).scrollTop() > 100) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
    topBtn.click(function () {                              //スクロールしてトップへ
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});
// スムーススクロール機能3/3 ここまで


$(function() {                                                       //enterキーで次の入力フォームへカーソルを移動
    $('input[type=text]:first').focus();                             //最初のinputにfocusする
    $('input').bind("keydown", function(e) {
        var n = $("input").length;
        if (e.which == 13)                                           //13=エンターkey
        {
            e.preventDefault();
            var nextIndex = $('input').index(this) + 1;
            if(nextIndex < n) {
                $('input')[nextIndex].focus();                        //次のフォームにfocus
            } else {
                $('input')[nextIndex-1].blur();                     //最後のだから.confirm-btnをクリック
                $('.confirm-btn').click();
            }
        }
    });
});
