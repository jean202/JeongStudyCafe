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
    </script>

<footer id="footer">
	<div class="bg_foot_menu">
		<div id="foot_menu">
			<ul class="clearfix ">
				<!-- 로그인 메뉴/ 경로 확인 -->
				<li><a href="http://localhost:8080/jeongstudycafe/main">Home</a></li>
				<li><a href="http://localhost:8080/jeongstudycafe/user/login">로그인</a></li>
				<li><a href="http://localhost:8080/jeongstudycafe/user/join">회원가입</a></li>
				<!-- // 로그인 메뉴 -->
				<li><a href="policy/01.php?top=9&sub=0">이용약관</a></li>
				<li><a href="policy/02.php?top=9&sub=1">개인정보 취급방침</a></li>			
			</ul>
		</div>
	</div>
	<div id="foot_contents">
		<div class="company_info">
			<ul>
				<li>
					<h5>
						<strong>INFORMATION</strong>
					</h5>
				</li>
				<li>상호명 : <strong>정스터디카페</strong>
				</li>
				<li>대표자명 : 정세욱</li>
				<li>주소 : 서울특별시 강남구 테헤란로 146</li>
				<li class="view_pc">대표전화 : 02-123-1234</li>
				<li class="view_mobile"><a href="tel:010-8943-4550"><span
						class="text-white">대표전화 : 02-123-1234</span></a></li>
			</ul>
			<ul>
				<li>
					<h5>
						<strong>LICENCE</strong>
					</h5>
				</li>
				<li>사업자등록번호 : 122-07-71385</li>
				<li>통신판매신고번호 : 서울 제2004-108호</li>
			</ul>
			<ul>
				<li>
					<h5>
						<strong>WEB MASTER</strong>
					</h5>
				</li>
				<li>e-mail : <strong>master@homepee.com</strong>
				</li>
				<li>개인정보보호정책 책임자 : 조성익</li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div id="bg_copy">
		<div class="wd">
			<div class="copy_year">
				<span class="color-red">모든 컨텐츠의 무단복제 및 재판매를 금지합니다.</span><br>
				Copyright(c) <span id="year"></span> by <strong>정스터디카페</strong> All
				Rights Reserved. Designed by <a class="link"
					href="http://www.JeongStudy.com/" target="_blank">JeongStudy.com</a>
			</div>
			<div id="link_nav_bottom"></div>
			<script src="JS/footer/link_nav_clone.js"></script>
		</div>
	</div>
</footer>