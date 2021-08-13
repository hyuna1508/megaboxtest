jQuery(document).ready(function($){
    $('.mainMenuBtn>li').on('mouseenter', function() {
    $('.mainMenuBtn>li').removeClass('on');
    $(this).addClass('on');
  });
  $('.mainMenuBtn>li').on('mouseleave', function() {
    $('.mainMenuBtn>li').removeClass('on');
  });
});//메뉴 활성화하는 스크립트