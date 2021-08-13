jQuery(document).ready(function($){ 
    var $button= $('.guide>dl'); 
    var $visual= $('.guide>dl>dd');
    var current= 0;

    $button.click(function(){
        var tg= $(this);
        var i= tg.index(); 
        $button.removeClass("on"); 
        tg.addClass("on");
        imageMove(i)
    });
    function imageMove(i){
        $visual.eq(current).css("height", '216px').stop().animate({height: '-216px'}); 
        $visual.eq(i).css("height", "-216px").stop().animate({height: '216px'}); 
        current= i;
    }
});