<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${root}/CSS/default.css"/>
<link rel="stylesheet" type="text/css" href="${root}/CSS/login.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<script>
/*	
 
 	$(document).ready(function(){
		
		$(".open").on('click', function() {
			$(".popup").show();
			$(".dim").show();
		});
			
		$(".popup .close").on('click', function() {
			$(this).parent().hide();
			$(".dim").hide();
		});
		
	});
	*/
</script>
<script>
	
</script>
<body>
<c:if test="${fail == true}">
	<div class="alert alert-danger">
		<h3>로그인 실패</h3>
		<p>아이디 비밀번호를 확인해주세요.</p>
	</div>
</c:if>
<form:form action="${root}/user/login_pro" method="post" modelAttribute="tempLoginUserBean">
	<!--  <a href="#login" class="open">로그인</a> -->

	<div class="popup">
		<h2>로그인</h2>
		<div class="con">
			<table class="type1">			
				<caption>				
					<details class="hide">
						<summary>로그인창</summary>
						<div>입력 : 아이디 비밀번호 
							  링크 : 아이디찾기 비밀번호찾기 회원가입 </div>
					</details>
				</caption>				
				<colgroup>
					<col style="width: 250px; right: 0;" >
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th><label for="txt01">아이디</label><span>*<em class="hide">필수입력</em></span></th>
						<td class="td">
						<form:input path="user_id" id="txt01" placeholder="아이디를 입력해주세요."/>
						<form:errors path="user_id" style="color:red"/>
						</td>
					</tr>
					<tr>
						<th><label for="txt02">비밀번호</label><span>*<em class="hide">필수입력</em></span></th>
						<td class="td">
						<form:password path="user_pw" id="txt02" placeholder="비밀번호를 입력해주세요."/>
						<form:errors path="user_pw" style="color:red"/>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="txt_center">
				<a href="${root}/user/join" class="btn_type2">회원가입</a>
				<a href="${root}/user/findId" class="btn_type2">아이디 찾기</a>
				<a href="${root}/user/findPw" class="btn_type2">비밀번호 찾기</a>
			</div>
		</div>
		<div class="txt_center">
		<form:button class="btn_type">로그인</form:button>	
		<a href="${root}/main" class="btn_type">취소</a>
		</div>
	</div>
	<div class="dim"></div>
	</form:form>

</body>
</html>