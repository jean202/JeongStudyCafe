// JavaScript Document
// homepee.com 

// default structure $('.carousel').carousel({        interval: 4000, pause:false    });

$('#main_carousel, #sub_carousel').carousel({        interval: 3000 	    });


$(".carousel-inner").swipe( {
    //Generic swipe handler for all directions
    swipeLeft:function(event, direction, distance, duration, fingerCount) {
        $(this).parent().carousel('next'); 
    },
    swipeRight: function() {
        $(this).parent().carousel('prev'); 
    },
    //Default is 75px, set to 0 for demo so any distance triggers swipe
    threshold:0
});