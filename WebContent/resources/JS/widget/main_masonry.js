// 홈피디자인의 저작물은 법으로 보호받고 있는 개발저작물로서 유료구입 사이트가 모두 관리되고 있습니다.
// 글.그림.컨텐츠의 무단 복제 사용시 법적 제제를 받으실수 있습니다.


$("#album01 .board_output tbody tr td .board_output tbody tr td table").clone().appendTo("#grid01");

$("#grid01 > table").wrap("<div class='grid-item wow fadeIn' data-wow-duration='1s' data-wow-delay='0s'></div>");
$("#grid01 > div").first().addClass('grid-sizer');

$(document).ready(function() {
    
	var $grid = $('#grid01').masonry({
	  // set itemSelector so .grid-sizer is not used in layout
	  itemSelector: '.grid-item',
	  // use element for option
	  columnWidth: '.grid-sizer',
	  percentPosition: true
	});
	$grid.imagesLoaded().progress( function() {
    $grid.masonry('layout');
	});

});

/**/

$("#album02 .board_output tbody tr td .board_output tbody tr td table").clone().appendTo("#grid02");

$("#grid02 > table").wrap("<div class='grid-item wow fadeIn' data-wow-duration='1s' data-wow-delay='0.2s'></div>");
$("#grid02 > div").first().addClass('grid-sizer');
$(document).ready(function() {
    
	var $grid = $('#grid02').masonry({
	  // set itemSelector so .grid-sizer is not used in layout
	  itemSelector: '.grid-item',
	  // use element for option
	  columnWidth: '.grid-sizer',
	  percentPosition: true
	});
	$grid.imagesLoaded().progress( function() {
    $grid.masonry('layout');
	});

});
