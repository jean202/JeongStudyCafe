<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var='root' value="${pageContext.request.contextPath}"/>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>
    <!-- Animate.css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css" rel="stylesheet" type="text/css">
    <!-- Awesome.css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Latest compiled and minified CSS -->
     <link rel="stylesheet" href="${root}/CSS/plugins/bootstrap3/bootstrap.min.css">
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
  
        <div class="text_title_white_bg02 bg-img"> <!-- 페이지디자인용 화이트 02 / 타이틀 / 배너 -->
          <div class="text_title">
            <div class="title01">TOPSTUDY<strong> TOPCAFE</strong>
              <div class="underbar"></div>
            </div>
            <div class="title02"><strong>최고가 되고 싶다면</strong> 선택하라 <strong class="text-warning">JEONGSTUDY</strong></div>
          </div>
        </div>
        <!-- ---------------------------------------------------------------------------------------------------------- -->
         <div id="img_banner_bg08" class="clearfix"> <!--메인 주 배너 -->
          <div class="banner_subject">INFO <span class="s5"> img_banner_bg08</span></div>
          <div class="main_bannern">
            <ul class="base02">
              <li>
                <ul class="base02">
                  <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s"> <a href="company/01.php?top=1&sub=0">
                    <div class="type_img"><img src="IMG/homepee/banner_square01.jpg" width="100%" alt=""/></div>
                    <div class="main_banner_title"> 시설안내
                      <p class="main_banner_dec">최신 스터디카페 트렌드 </p>
                    </div>
                    </a></li>
                  <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s"> <a href="business/01.php?top=2&sub=0">
                    <div class="type_img"><img src="IMG/homepee/banner_square02.jpg" width="100%" alt=""/></div>
                    <div class="main_banner_title"> 예약하기
                      <p class="main_banner_dec">빠르고 쉬운 예약</p>
                    </div>
                    </a></li>
                </ul>
                <ul class="base02">
                  <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.6s"> <a href="product/01.php?top=3&sub=0">
                    <div class="type_img"><img src="IMG/homepee/banner_square03.jpg" width="100%" alt=""/></div>
                    <div class="main_banner_title"> 음료
                      <p class="main_banner_dec">바리스타가 직접 만드는 음료</p>
                    </div>
                    </a></li>
                  <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.6s"> <a href="online/01.php?top=4&sub=0">
                    <div class="type_img"><img src="IMG/homepee/banner_square04.jpg" width="100%" alt=""/></div>
                    <div class="main_banner_title">식사
                      <p class="main_banner_dec">샌드위치부터 디저트까지</p>
                    </div>
                    </a></li>
                </ul>
              </li>
              <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.0s"> <a href="customer/01.php?top=5&sub=0">
                <div class="type_img"><img src="IMG/homepee/banner_square05.jpg" width="100%" alt=""/></div>
                <div class="main_banner_title"> 이벤트
                  <p class="main_banner_dec">다양한 이벤트 혜택</p>
                </div>
                </a></li>
            </ul>
            <div class="clear"></div>
          </div>
        </div>

