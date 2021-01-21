// JavaScript Document
$(document).ready(function() {
	$(".bbs_origin .board_output .bbs_scroll tr").clone().appendTo(".main_bbs_list_white01 .bbs_out");
	$(".main_bbs_list_white01 .bbs_out > tr").wrap("<div></div>");
	
	$(".main_bbs_list_white01 .bbs_origin").remove();
	
	$(".main_bbs_list_white01 .bbs_out font").removeAttr("style").html("<span class='label label-danger'>N</span>");
	$('.main_bbs_list_white01 .bbs_out').slick({
		vertical: true,
		autoplay:true,
    slidesToShow: 4,
    slidesToScroll: 1,
    verticalSwiping: true,
	appendArrows:''
	});
});