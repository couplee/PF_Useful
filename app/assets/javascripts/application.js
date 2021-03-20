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


$(function() {                                                                          //enterキーでフォーム移動//
    //最初のinputにfocusしてあげる気が利く系処理
    $('input[type=text]:first').focus();
    $('input').bind("keydown", function(e) {
        var n = $("input").length;
        //13=エンターkeyです
        if (e.which == 13)
        {
            e.preventDefault();
            var nextIndex = $('input').index(this) + 1;
            if(nextIndex < n) {
                //次のやつにfocus        
                $('input')[nextIndex].focus();
            } else {
                //最後のやつなので#login-btnをクリック        
                $('input')[nextIndex-1].blur();
                $('#submit').click();
            }
        }
    });
});

// currentFNo = 0;
// function nextForm()
// {
// 	if (event.keyCode == 13)
// 	{
// 		currentFNo++;
// 		currentFNo %= document.myFORM.elements.length;
// 		document.myFORM[currentFNo].focus();
// 	}
// }
// window.document.onkeydown = nextForm;


            // function next_text( idx )
            // {
            //     if( window.event.keyCode == 13 ){        // 13は0x0d(CRキー)
            //         // 次のテキストボックスへ飛ばす処理をここにかく
            //         document.mainForm.text1[ idx ].focus() ; 
            //         return false ;
            //     }
            //     return true ;
            // }


// $(function() {
//     $('input').on("keydown", function(e) {
//         var n = $("input").length;
//         if (e.which == 13) {
//             e.preventDefault();
//             var Index = $('input').index(this);            // 現在の要素
//             var nextIndex = $('input').index(this) + 1;    // 次の要素
//             var hogeIindex = $('input').index($("#hoge")); // 特定要素
//             if (Index === hogeIndex) {
//                 $('input')[Index].blur();         // #hogeではフォーカスを外す
//             } else if (nextIndex < n) {
//                 $('input')[nextIndex].focus();    // 次の要素へフォーカスを移動
//             } else {
//                 $('input')[Index].blur();         // 最後の要素ではフォーカスを外す
//             }
//         }
//     });
// });


// function keydown(e){
//   if(e.keyCode === 13){
//     var obj = document.activeElement;
//     obj.nextElementSibling.focus();
//   }
// }
 
// window.onkeydown = keydown;