<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="img/homepee/images/favicon.ico" />
    <title>JEONGSTUDY - 24카페, 공부공간, 작업공간, 다양한 	 서비스 </title>
     <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>
    <!-- Animate.css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css" rel="stylesheet" type="text/css">
    <!-- Awesome.css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Latest compiled and minified CSS -->
     <link rel="stylesheet" href="${root}/CSS/plugins/bootstrap3/bootstrap.min.css?after">
     <!-- Optional theme -->
     <link rel="stylesheet" href="${root}/CSS/plugins/bootstrap3/bootstrap-theme.min.css">
    <!-- homepee.com cssFile -->
    <link rel="stylesheet" type="text/css" href="${root}/CSS/basic.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/design.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/widget.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/piece_widget.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/page_design.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/plugin/side_quicknav/side_quicknav01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/plugins/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/metapo/slideBg_aniTxt_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/plugins/slick/slick-theme.css">
    <!-- homepee.com pageCssfile -->
	<link rel="stylesheet" type="text/css" href="${root}/CSS/plugin/loading/loading_black_v01.css">
	<link rel="stylesheet" type="text/css" href="${root}/CSS/header_one_tran_v01.css">
	<link rel="stylesheet" type="text/css" href="${root}/CSS/topheader_pink_v01.css">
	<link rel="stylesheet" type="text/css" href="${root}/CSS/nav_one_tran_pink_v07.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/slide_common.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/contents/contents_horizontal.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/contents/aside_white_pink_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/contents/section_white_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/board_common.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/sitemap/siteMap_black_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/footer/footer_black_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/footer/footer_black_menu_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/plugin/scrolltop/scrolltop_black_v01.css">
    <link rel="stylesheet" type="text/css" href="${root}/CSS/plugin/sms/sms_modal_white_v01.css">
    <!-- homepee.com widgetCssfile -->
  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="${root}/JS/plugins/bootstrap.min.js"></script>
    <script src="${root}/JS/plugin/jquery.touchSwip.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.0.2/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
     <script src="${root}/JS/slick/slick.min.js"></script>
    <!-- homepee.com pageJsfile -->
    <script src="${root}/JS/loading/loading-black-v01.js"></script>
    <script src="${root}/JS/myjs.js"></script>
    <script language="javascript" type="text/javascript" src="${root}/JS/cjs/lib.js"></script>
    <script language="javascript" src="${root}/JS/cjs/board.js"></script>
  
    </head>
    <body id="home">
    <div class="loading_wrapper">
      <div class="loading_bg">
        <div class="loading"></div>
        <div id="loading-text">homepee.com</div>
      </div>
    </div>
    <!-- ---------------------------------------------------------------------------------------------------------- -->
    <div class="wrapper_bg">
      <div class="wrapper">      
      <c:import url="/WEB-INF/views/include/header.jsp"/>
        <div id="main_metapo_wrap">
          <div class="main_metapo">
            <div id="main_carousel" class="carousel slide" data-ride="carousel">       
              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item metapo_num01 active">
                  <div class="carousel-caption">
                    <div data-animation="animated fadeInDown">
                      <div class="mtext01">JEONGSTUDY CAFE</div>
                    </div>
                    <div data-animation="animated fadeInLeft">
                      <div class="mtext02">당신의 꿈이 실현될 <strong>premium</strong> 스터디카페</div>
                      <div class="mtext03">쾌적한 공간, 다양한 부대시설  - 트렌디하고, 따스하며, 정감가는 나만의 작업실. </div>
                    </div>
                    <div data-animation="animated fadeIn"> <a href="#none">
                      <div class="btn btn-lg btn-black hidden"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> READ MORE</div>
                      </a> </div>
                  </div>
                  <!-- end-caption --> 
                </div>
          		</div>
                </div> 
              </div>              
              <!-- Controls --> 
              <a class="left carousel-control" data-slide="prev"> 
              <span class="glyphicon glyphicon-chevron-left"></span> </a>
               <a class="right carousel-control" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span> </a> 
                </div>
          </div>
        </div>        
        <!-- ---------------------------------------------------------------------------------------------------------- --> 
        <script src="JS/metapo/slide_aniTxt.js"></script> 
        <script src="JS/metapo/slide_timeSet.js"></script> 
        <!-- ---------------------------------------------------------------------------------------------------------- --> 
        
        <!-- ############ PLAY WIDGET ######################### --> 
        
        <!-- ---------------------------------------------------------------------------------------------------------- -->
       <!-- 경로 확인점 해야 ㅠ------------------------------------------------------------------------- -->
        <c:import url="/WEB-INF/views/include/square.jsp"/> 
        <!-- ---------------------------------------------------------------------------------------------------------- -->
     	<c:import url="/WEB-INF/views/include/blackand.jsp"/>
    
    
    <script> 
    //------------------------------- 메뉴 위치 현황 -----------------------------------------> 
    $(document).ready(function() {
       $("#nav .menu > li:nth-child() > a").addClass('nav_on');
       $(".left_menu li:eq() > a").addClass('nav_on');
    });
    
    </script>
    <!-- ---------------------------------------------------------------------------------------------------------- -->
        <section id="Section06">
          <div id="sitemap_wrap" class="hidden-xs content-xs">
            <div id="sitemap" class="clearfix"></div>
          </div>
          <script src="JS/footer/sitemap_clone.js"></script>
        </section>
        <!-- ---------------------------------------------------------------------------------------------------------- -->
        <div class="map_grey">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.336351395938!2d127.0332709505258!3d37.49998443559612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca3fe10658c31%3A0x3c9a3aa2832a63b4!2z7ISc7Jq47Yq567OE7IucIOqwleuCqOq1rCDsl63sgrzrj5kg7YWM7Zek656A66GcIDE0Ng!5e0!3m2!1sko!2skr!4v1570193486420!5m2!1sko!2skr" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <!-- ---------------------------------------------------------------------------------------------------------- -->
       
      <c:import url="/WEB-INF/views/include/footer.jsp"/>
            
        <!-- ----------------------------- 스크롤탑 --------------------------------------- -->
        <div id="scrollTop">
          <div class="scrollBtn"><i class="fa fa-chevron-up"></i></div>
        </div>
        
        <!-- ----------------------------- 스크롤탑 종료 --------------------------------------- --> 
        
      </div>
    </div>       
    </body>
    </html>
   	
            
