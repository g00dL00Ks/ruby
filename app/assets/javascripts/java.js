// JavaScript Document

$(function () {








$(".user-thumbnail").hover(function(){
    
  $( this ).find(".caption-thumbnail .like-btn,.caption-text").css({
                "opacity":"1",
    "-webkit-transition":"All 0.5s ease",
    "-moz-transition":"All 0.5s ease",
    "-o-transition":"All 0.5s ease"
    });
                
                $( this ).find(".caption-thumbnail").css({
                "background-color": "rgba(0,0,0,0.8)",
    "-webkit-transition":"All 0.5s ease",
    "-moz-transition":"All 0.5s ease",
    "-o-transition":"All 0.5s ease"
    });
                
                
                

    
  },function(){    //call back function when mouse moveout
    $( this ).find(".caption-thumbnail .like-btn,.caption-text").css({
                "opacity":"0",
    "-webkit-transition":"All 0.5s ease",
    "-moz-transition":"All 0.5s ease",
    "-o-transition":"All 0.5s ease"
    });
                
                $( this ).find(".caption-thumbnail").css({
                "background-color": "rgba(0,0,0,0.1)",
    "-webkit-transition":"All 0.5s ease",
    "-moz-transition":"All 0.5s ease",
    "-o-transition":"All 0.5s ease"
    });
                
               
                
});



$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});




});//end of main function 