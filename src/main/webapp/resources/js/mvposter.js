$(function(){
    var $images= $('.mvposter dd');
    $images.filter(':nth-child(1)').on('mouseover', function(){
        $(this).find('strong').stop().animate({opacity:1}, 1000*0.5);
    })
    .on('mouseout', function(){
        $(this).find('strong').stop().animate({opacity:0}, 1000*0.5); 
    });//영화 포스터에 mouseover 효과

}); 