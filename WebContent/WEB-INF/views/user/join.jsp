<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${root}/CSS/default.css" />
<link rel="stylesheet" type="text/css"
	href="${root}/CSS/join.css" />
</head>
<script>
function checkUserIdExist(){
	//사용자가 입력한 id값 가져오기
	var user_id = $("#user_id").val()
	// id 유효성 체크해주기 
	if(user_id.length == 0){
		alert('아이디를 입력해주세요')
		$("#user_id").focus();
		return;
	}
	if ((user_id.length > 11) || (user_id.length <4)) {
		alert("아이디는 4~10글자로 입력해주세요.");
		$("#user_id").focus();
		return;
	}
	// ajax 호출
	$.ajax({	// 요청할 페이지의 주소		// 사용자가 입력한 id
		url : '${root}/user/checkUserIdExist/' + user_id,
		type : 'get',	// 요청타입
		dataType : 'text',	// 응답결과타입
		success : function(result){	// 성공시 호출될 함수
			if(result.trim() == 'true'){
				alert('사용할 수 있는 아이디입니다');
				$("#userIdExist").val('true')
			}else{
				alert('사용할 수 없는 아이디입니다');
				$("#userIdExist").val('false')
			}
		}
	})
}
//사용자 아이디 입력하는 칸에 키보드를 누르면, 무조건 이 값을 false로 세팅한다.
function resetUserIdExist(){
$("#userIdExist").val('false')
}
// 성익
function chkSubmit() {

		frm = document.forms["frm"];

		var name = frm["user_name"].value.trim();
		var id = frm["user_id"].value.trim();
		var password = frm["user_pw"].value.trim();
		var pwChk = frm["pwChk"].value.trim();
		var addr = frm["user_addr1"].value.trim()
		var check = frm["check"].value;
		var phonenumChk = frm["user_phone2"].value.trim() + frm["user_phone3"].value.trim()
		var email1 = frm["user_email1"].value.trim()
		var email2 = frm["user_email2"].value.trim()
		
		alert(id, name);

		if (name == "") {
			alert("이름을 입력해주세요.");
			frm["user_name"].focus();
			return false;
		}

		if (form.idDuplication.value != "idCheck") {
			alert("id 중복체크를 해주세요.");
			return false;
		}

		if (id == "") {
			alert("아이디를 입력해주세요.");
			frm["user_id"].focus();
			return false;
		}

		if (id.length > 8) {
			alert("아이디는 8자리 이하로 입력해주세요.");
			frm["user_id"].focus();
			return false;
		}

		if (password == "") {
			alert("비밀번호를 입력해주세요.");
			frm["user_pw"].focus();
			return false;
		}

		if (!(password.length >= 4 && password.length <= 10)) {
			alert("비밀번호는 4~10자리만 입력이 가능합니다.");
			frm["user_pw"].focus();
			return false;
		}

		if (password != pwChk) {
			alert("비밀번호와 비밀번호확인이 일치하지 않습니다.");
			frm["pwChk"].focus();
			return false;
		}

		if (addr == "") {
			alert("주소를 입력해주세요.");
			return false;
		}

		if (user_email1 == "" || user_email2 == "") {
			alert("이메일을 정확하게 입력해주세요.");
			frm["user_email1"].focus();
			return false;
		}

		if (!(phonenumChk.length == 7 || phonenumChk.length == 8)) {
			alert("핸드폰번호를 정확하게 입력해주세요.");
			frm["user_phone2"].focus();
			return false;
		}

		if (check) {
			alert(check);
			alert("개인정보 수집 및 이동 동의에 체크해주세요.");
			return false;
		}

		return true;
	}; // end chkSubmit()

	
	// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	// document.domain = "abc.go.kr";

	function goPopup() {
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("${root}/user/jusoPopup", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.frm.user_addr1.value = roadAddrPart1;
		// document.frm.addr3.value = roadAddrPart2;
		document.frm.user_addr2.value = addrDetail;
		document.frm.zipNo.value = zipNo;
	}
	/**
	// form 검증(validation)용 함수.  onsubmit 에서 호출
	// 검증을 통과하면 true 를 리턴,  아니면 false 리턴 **/
	function openIdChk() {
		window.name = "parentForm";
		window.open("{root}/user/idCheckForm", "chkForm",
				"width=500, height=300, resizable=no, scrollbars=no");
	}

	function inputIdChk() {
		document.userInfo.idDuplication.value = "idUncheck";
	}
	
</script>
<body>

	<form:form name="frm" action="${root}/user/join_pro" method="post" modelAttribute="joinUserBean" onsubmit="return chkSubmit()">
		<form:hidden path="userIdExist"/>
		<div class="contents">
			<h3 class="h3">회원가입 정보입력</h3>
			<table class="type1">
				<caption></caption><!-- ???? -->
				<colgroup>
					<col style="width: 170px;">
				</colgroup>
				<tbody>
					<tr>
						<th><span>*</span>이름</th><!-- 라벨을 붙일것이냐 말것이냐? -->
						<td><form:input path="user_name"
							style="width: 270px;" maxlength="12" placeholder="이름을 입력해주세요[2~10글자]"/>
							<span class="info"><form:errors path="user_name" style="color:red"/></span>
						</td>
					</tr>
					<tr>
						<th><span>*</span>성별</th>
						<td><form:select path="user_gender">
								<form:option value="남" selected="selected">남</form:option>
								<form:option value="여">여</form:option>
						</form:select></td>
					</tr>
					<tr>
						<th><span>*</span>아이디</th>
						<td><form:input path="user_id" style="width: 270px;" maxlength="12" placeholder="아이디를 입력해주세요[4~10글자]" 
						onkeydown="resetUserIdExist()"/> 
							<button id="button" type="button" onclick="checkUserIdExist()">아이디 중복확인</button>							
							<span class="info">
								<form:errors path="user_id" style="color:red"/>
							</span>
						</td>
					</tr>
					<tr>
						<th><span>*</span>비밀번호</th>
						<td><form:password path="user_pw"
							style="width: 270px;" placeholder="비밀번호를 입력해주세요.[4~20자리]"/> 
							<span class="info"><form:errors path="user_pw" style="color:red"/></span>							
						</td>
					</tr>
					<tr>
						<th><span>*</span>비밀번호 확인</th>
						<!-- name이 어떻게 동작하는지 살펴보기 -->
						<td><form:password path="user_pw2" name="pwChk" style="width: 270px;"
							placeholder="비밀번호를 한번 더 입력해주세요."/>
						<span class="info"><form:errors path="user_pw2" style="color:red"/></span>
						</td>
					</tr>
					<tr>
						<th><span>*</span>주소</th>
						<td>
							<div class="addr">
							<!-- form:hidden path 로 하려면 어떻게 바꿔야 할까 -->
							<!-- <form:hidden path="" id="confmKey" name="account" value=""/> -->	
								<form:hidden path="" id="confmKey" name="confmKey" value=""/>
								<form:input path="" id="zipNo" name="zipNo"
									style="width: 270px;" readonly="true"/>
								<a class="btn_type3"
									onclick="goPopup()">우편번호 검색</a>
							</div>
							<div>
								<form:input id="roadAddrPart1" path="user_addr1"
									style="width: 300px;" readonly="true"/> 
								<form:input id="addrDetail" path="user_addr2"
									style="width: 300px;" readonly="true"/>
							</div>
						</td>
					</tr>
					<tr>
						<th><span>*</span>이메일 주소</th>
						<td><form:input path="user_email1" style="width: 210px;"/> @ 
						<form:input path="user_email2" style="width: 194px;"/>
					<!-- 여기에 옵션 더 넣어주면 좋겠다 
						<form:select path="" name="email">
								<form:option value="">직접입력</form:option>
						</form:select> --> 
						</td>
					</tr>
					<tr>
						<th><span>*</span>휴대폰 번호</th>
						<td><form:select path="user_phone1">
								<form:option value="010" selected="selected">010</form:option>
								<form:option value="011">011</form:option>
								<form:option value="016">016</form:option>
								<form:option value="017">017</form:option>
								<form:option value="019">019</form:option>
							</form:select> 
							<!-- input type="tel"이란 뭘까? -->
							<form:input path="user_phone2" style="width: 210px;"/>
							<form:input path="user_phone3" style="width: 210px;"/>
						</td>
					</tr>
				</tbody>
			</table>	
			<div class="btn_center">
				<form:button class="btn_type1" style="color:white">회원등록</form:button> 
				<a href="${root }/user/login" class="btn_type2">취소</a>
			</div>
		</div>
		</form:form>
</body>
</html>