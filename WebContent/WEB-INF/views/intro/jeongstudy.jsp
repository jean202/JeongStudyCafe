<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JEONGSTUDY 소개</title>
<link rel="stylesheet" href="CSS/style.css">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>
<!-- Animate.css -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css"
	rel="stylesheet" type="text/css">
<!-- Awesome.css -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/plugins/bootstrap3/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/plugins/bootstrap3/bootstrap-theme.min.css">
<!-- homepee.com cssFile -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/basic.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/design.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/widget.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/piece_widget.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/page_design.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/plugin/side_quicknav/side_quicknav01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/plugins/slick/slick.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/metapo/slideBg_aniTxt_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/plugins/slick/slick-theme.css">
<!-- homepee.com pageCssfile -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/plugin/loading/loading_black_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/header_one_tran_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/nav_one_tran_pink_v07.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/slide_common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/contents/contents_horizontal.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/contents/aside_white_pink_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/contents/section_white_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/board_common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/sitemap/siteMap_black_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/footer/footer_black_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/footer/footer_black_menu_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/plugin/scrolltop/scrolltop_black_v01.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/plugin/sms/sms_modal_white_v01.css">

<!-- homepee.com widgetCssfile -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="${pageContext.request.contextPath}/JS/plugins/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/JS/plugin/jquery.touchSwip.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.0.2/wow.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/slick/slick.min.js"></script>
<!-- homepee.com pageJsfile -->
<script
	src="${pageContext.request.contextPath}/JS/loading/loading-black-v01.js"></script>
<script src="${pageContext.request.contextPath}/JS/myjs.js"></script>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/JS/cjs/lib.js"></script>
<script language="javascript"
	src="${pageContext.request.contextPath}/JS/cjs/board.js"></script>

</head>
<body>
	<header id="header">
		<div class="top_header_bg">
			<div id="top_header" class="clearfix">
				<div id="g_nav">
					<ul class="clearfix">
						<!-- 이래도 되나? -->
						<li class="hidden-xs"><a href="main.jsp">Home</a></li>
						<!-- 로그인 조인과 연결시켜야 하는 부분 -->
						<li><a href="member/login.php?top=6&sub=0">Login</a></li>
						<li><a href="member/join.php?top=6&sub=1">Join</a></li>
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
		<div id="navwrap_bg" class="clearfix" style="background-color:rgba(0,0,0,0.8)">
			<div id="navwrap">
				<div id="logo">
					<h1>
						<!-- 로고 누르면 메인페이지로 다시 -->
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
						<li><a href="index2.html">공간소개</a>
							<ul>
								<!-- 이것을 누르면 각각의 페이지로.... 경로 맞는지 체크 ㅠ -->
								<li><a href="facilityboard/JEONGSTUDY.jsp">JEONGSTUDY</a></li>
								<li><a href="facilityboard/facilityBoardList.jsp">시설안내</a></li>
								<li><a href="directions.jsp">오시는길</a></li>
							</ul></li>
						<li><a href="business/01.php?top=2&sub=0">예약하기</a>
							<ul>
								<li><a href="business/01.php?top=2&sub=0">공간예약/좌석예약</a></li>

							</ul></li>
						<li><a href="product/01.php?top=3&sub=0">부대시설 </a>
							<ul>
								<li><a href="product/01.php?top=3&sub=0">음료 및 식사</a></li>

							</ul></li>
						<li><a href="online/01.php?top=4&sub=0">이벤트 </a>
							<ul>
								<li><a href="online/01.php?top=4&sub=0">이벤트 보기</aㄴ></li>
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
	<div class="section pdt70 pdb100">
		<div class="container">
			<div class="container_left1">
				<div class="underbarblue"></div>
				<h3 class="regular">
					간절함을 <br>알고있는 스터디카페
				</h3>
			</div>

			<div class="container_right1" style="margin-top: 23px;">
				<p>정스터디의 시작은
					<span class="first regular"> ‘수험생들의 간절함’</span>
					 을 이해하는 것에서 부터 시작됐습니다.<br>
수험생들은 인생에서 가장 중요하고, 힘든 시기를 보내야만 하는 아픔을 갖고 있습니다.<br>
 사업을 준비하면서 이런 아픔을 달래기 위한
가장 좋은 방법이 무엇일까를 고민했습니다.<br>
 그리고 그 방법은 단 한 번의 고생으로 수험생들이 성공할 수 있도록 돕는 것이라 판단했습니다.<br>
이를 위해 학습 공간의 실체적인 변화가 필요했고, ‘편안한 학습공간을 만드는 것이 필요하겠다’라는 강한 의지가 있었습니다.
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="container_left1">
			<div class="underbarblue"></div>
			<h3 class="regular">
				100년을 내다보는 <br>정스터디
			</h3>
		</div>

		<div class="container_right1" style="margin-top: 23px;">
			<p>
				<span class="first regular">정스터디</span>는 설립 이후 프리미엄 스터디카페 시장의 새로운
				모델을 만들어 가고자 최선의 노력을 다하고 있습니다.<br> 특히 스터디카페 창업자들과 이용회원들에게 ‘가치를
				만들고 감동을 주는 공간’을 제공하기 위해 연구하고, 고민을 거듭해 왔습니다.<br> 그 결과 프리미엄 스터디카페
				시장에서 가장 합리적인 프랜차이즈 시스템을 장착하게 됐고, 높은 신뢰를 구축할 수 있었습니다.
			</p>
		</div>
	</div>
	<div class="container">
		<div class="container_left1">
			<div class="underbarblue"></div>
			<h3 class="regular">VISION 2020</h3>
		</div>
		<div class="container_right1"
			style="margin-top: 23px;">
			<p>
				<span class="first regular">정스터디</span>가 추구하는 비전(vision)의 기본 원칙은
				‘1년을 준비해 가는 브랜드 만들기’입니다.<br> 교육은 백년지대계(百年之大計)라 합니다. 하지만 우리의 목표는
				학생들이 최단 기간 내에 합격의 문을 두드리는 것이지, 저희의 사업(창업)이 우선시 되는것이 아닙니다.<br>
				교육사업은 항상 비전을 제시하고 이를 이뤄나가기 위한 끊임없는 노력과 열정이 필요합니다. <br> 스터디카페
				사업은 단순한 공간임대업이 아닌 각자의 목표를 성취하는 개인 브랜드의 장 입니다. 스터디카페가 ‘꿈을 이루어주는 공간’이
				되어야 하는 이유입니다.<br> 최고의 프리미엄 시설을 만들고 그 안에 최고의 서비스를 탑재한 공간이 되어야
				합니다.<br> 앞으로도 정스터디는 ‘모든 형태의 목표 실현이 가능한 스터디카페’, ‘모두가 성공하는
				스터디카페’를 만들어 나가기 위해 최선을 다할 것입니다.<br> <br> 'Vision 2020'은 이런
				정스터디의 생각과 목표를 담은 의지의 표명입니다.
			</p>
		</div>

	</div>
	<section id="Section06">
		<div id="sitemap_wrap" class="hidden-xs content-xs">
			<div id="sitemap" class="clearfix"></div>
		</div>
		<script src="JS/footer/sitemap_clone.js"></script>
	</section>
</body>
</html>

