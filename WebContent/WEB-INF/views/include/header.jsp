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
   
<!-- 헤더 -->
<header id="header">
	<div class="top_header_bg">
		<div id="top_header" class="clearfix">
			<div id="g_nav">				
				<ul class="clearfix">
				<c:choose>
				<c:when test="${loginUserBean.userLogin == true}">
				<li class="hidden-xs"><a href="${root }/main">Home</a></li>
					<li class="nav-item"><a href="${root}/user/modify"
						class="nav-link">Edit Profile</a></li>
					<li class="nav-item"><a href="${root}/user/logout"
						class="nav-link">Logout</a></li>
				</c:when>
				<c:otherwise>
					<li class="hidden-xs"><a href="${root}/main">Home</a></li>
					<li class="nav-item"><a href="${root}/user/login"
						class="nav-link">Login</a></li>
					<li class="nav-item"><a href="${root}/user/join"
						class="nav-link">Join</a></li>
				</c:otherwise>
				</c:choose>				
				</ul>
				<div class="clear"></div>
			</div>
			<!--link_nav 페이스북 트위터 아이콘들-->
			<div id="link_nav">			
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!--  end-top_header -->

	<!-- ---------------------------------------------------------------------------------------------------------- -->
	<div id="navwrap_bg" class="clearfix">
		<div id="navwrap">
			<div id="logo">
				<h1><!-- 로고 누르면 메인페이지로 다시 -->
					<a href="main.jsp"><img src="IMG/homepee/mainlogo.png"
						alt="logo" border="0" /></a>
				</h1>
			</div>
			<div id="mobnav_btn" class="menu-icon-container">
				<div class="menu-icon"></div>
			</div>
			<!--1단 메뉴-->
			<nav id="nav" class="clearfix">
				<ul class="menu">
					<li><a href="#">공간소개</a>
						<ul>	<!-- 이것을 누르면 각각의 페이지로.... 경로 맞는지 체크 ㅠ -->
							<li><a href="${root }/intro/jeongstudy">JEONGSTUDY</a></li>
							<li><a href="facilityboard/facilityBoardList.jsp">시설안내</a></li>
							<li><a href="${root }/intro/directions">오시는길</a></li>
						</ul></li>
					<li><a href="reservation/list">예약하기</a>
						<ul>
							<li><a href="reservation/list">공간예약/좌석예약</a></li>

						</ul></li>
					<li><a href="product/01.php?top=3&sub=0">부대시설 </a>
						<ul>
							<li><a href="product/01.php?top=3&sub=0">음료 및 식사</a></li>

						</ul></li>
					<li><a href="event/list">이벤트 </a>
						<ul>
							<li><a href="event/list">이벤트 보기</a></li>
						</ul></li>
					<li><a href="customer/01.php?top=5&sub=0">게시판 </a>
						<ul>
							<li><a href="customer/01.php?top=5&sub=0">자유게시판</a></li>

						</ul></li>
					<!-- <li><a href="customer/01.php?top=5&sub=0">오시는길 </a>
                  </li> -->
				</ul>
			</nav>
			<!-- // 1단 메뉴-->
			<!--link_nav clone -->
		</div>
	</div>
</header>