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


// スムーススクロール機能3/3 ここから
$(function() {
    var topBtn = $('#page-top');
    topBtn.hide();
    //スクロールが100に達したらボタン表示
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});
// スムーススクロール機能3/3 ここまで

$(function() {
  $('.slider').slick();
});


//   var Swiper = new Swiper('.swiper-container', {
//   navigation: {
//     nextEl: '.swiper-button-next',
//     prevEl: '.swiper-button-prev',
//   }
// })
// var Swiper = new Swiper('.swiper-container', {
//   navigation: {
//     nextEl: '.swiper-button-next',
//     prevEl: '.swiper-button-prev',
//   }
// })

// var swiper = new Swiper('.swiper-container', {
//   pagination: '.swiper-pagination',
//   paginationClickable: true,
//   parallax: true,
//   speed: 600,
//   autoplay: 4000,
//   loop: true,
// });

// var Swiper = new Swiper('.swiper-container', {
//   loop: true,
//   pagination: {
//     el: '.swiper-pagination',
//   },
//   navigation: {
//     nextEl: '.swiper-button-next',
//     prevEl: '.swiper-button-prev',
//   },
//   scrollbar: {
//     el: '.swiper-scrollbar',
//   },
// })



// $(function() {                                                                    改行でフォームを大きくする、、(htmlとcssにも記入してる)
//   var $textarea = $('#textarea');
//   var lineHeight = parseInt($textarea.css('lineHeight'));
//   $textarea.on('input', function(e) {
//     var lines = ($(this).val() + '\n').match(/\n/g).length;
//     $(this).height(lineHeight * lines);
//   });
// });