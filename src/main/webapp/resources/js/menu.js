$(document).ready(function() {
    var menulist=[
        {
            main: "영화",
            sublist: ['전체영화','큐레이션','무비포스트']
        },
        {
            main: "예매",
            sublist: ['빠른 예매','상영시간표','더 부티크 프라이빗 예매']
        },
        {
            main: "극장",
            sublist: ['전체 극장','특별관']
        },
        {
            main: "이벤트",
            sublist: ['진행중 이벤트','지난 이벤트','당첨 발표']
        },
        {
            main: "스토어",
            sublist: []
        },
        {
            main: "혜택",
            sublist: ['메가박스 멤버십','제휴/할인']
        },
    ]
    var menuLength= menulist.length;
    var innermanuHTMLData="";
    
    for(var i=0; i<menuLength; i=i+1){ 
        innermanuHTMLData= '<li><a href="#">'+menulist[i]['main']+'</a>'+'<ul>';    
        var subTag = "";
        for(var k = 0; k < menulist[i]['sublist'].length; k=k+1){
            subTag = subTag + '<li><a href="#">' + menulist[i]['sublist'][k] + '</a></li>';    
        }
        innermanuHTMLData= innermanuHTMLData+ subTag + '</ul></li>';
        $('.mainMenuBtn').append(innermanuHTMLData);
        
    }
  });