<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 정보 수정</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/CSS/default.css" />
<link rel="stylesheet" type="text/css" href="${root}/CSS/join.css" />
</head>
<script>
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
</script>
<body>
	<form:form name="frm" action="${root}/user/modify_pro" method="post"
		modelAttribute="modifyUserBean">
		<div class="contents">
			<h3 class="h3">회원가입 정보입력</h3>
			<table class="type1">
				<caption></caption>
				<colgroup>
					<col style="width: 170px;">
				</colgroup>
				<tbody>
					<tr>
						<th><span>*</span>이름</th>
						<td>
							<form:input path="user_name" style="width: 270px;" maxlength="12" readonly="true"/>
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
						<td>
						<form:input path="user_id" style="width: 270px;" maxlength="12" readonly="true"/> 							
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
				<form:button class="btn_type1" style="color:white">정보수정</form:button> 
				<a href="${root }/user/main" class="btn_type2">취소</a>
			</div>
		</div>	
	</form:form>
</body>
</html>

