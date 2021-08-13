jQuery(document).ready(function($){ 
    var $button= $('.benefit_btn>li'); 
    var $visual= $('.benefit>li');
    var current= 0;

    $button.click(function(){
        var tg= $(this);
        var i= tg.index(); 
        $button.removeClass("on"); 
        tg.addClass("on");
        imageMove(i)
    });
    function imageMove(i){
        $visual.eq(current).css("left", 0).stop().animate({left: '-100%'}); 
        $visual.eq(i).css("left", "100%").stop().animate({left:'0'}); 
        current= i;
    }

    setInterval(function(){
        var n= current +1;
        if(n == $button.length) n = 0;
        $button.eq(n).trigger('click');
    }, 5*1000);
    //배너 움직이는 스크립트

    // $('.mainMenuBtn>li').on('mouseenter', function() {
    //     $('.mainMenuBtn>li').removeClass('on');
    //     $(this).addClass('on');
    //   });
    //   $('.mainMenuBtn>li').on('mouseleave', function() {
    //     $('.mainMenuBtn>li').removeClass('on');
    //   });
    // //메뉴 활성화하는 스크립트
});
    
