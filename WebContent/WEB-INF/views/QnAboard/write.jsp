<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath}" />
<%--    
<c:if test="${sessionScope.isAdmin ne 'YES'}">
	<script>
		alert("접근권한이 없습니다.");
		location.href = "list";
	</script>
</c:if>
<c:if test="${empty sessionScope.accNum}">
	<script>
		alert("접근권한이 없습니다.");
		location.href = "list";
	</script>
</c:if>
--%> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의게시판 글쓰기</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css"	href="${root}/CSS/qna_board.css" />
</head>
<script>
function chkSubmit(){
	var frm = document.forms['frm'];
	var subject = frm['subject'].value.trim();
	var file = frm['file'].value;
	
	if(file == ""){
		alert("업로딩 할 이미지가 없습니다.");
		return false;
	}
	
if(file.substring(file.lastIndexOf('.')+1) != "jpg" && file.substring(file.lastIndexOf('.')+1) != "gif" && file.substring(file.lastIndexOf('.')+1) != "png" && file.substring(file.lastIndexOf('.')+1) != "jpeg"){
		alert(".jpg .gif .png .jpeg 파일만 업로드 가능합니다.")
		return false;
	}
	
	
	if(subject == ""){
		alert("제목은 반드시 작성해야 합니다");
		frm["subject"].focus();
		return false;
	}
	
	return true;
}

</script>
	
						
<body>
<form:form name="frm" action="${root}/QnAboard/write_pro" method="post" modelAttribute="QnaCombineBean" enctype="multipart/form-data">
<form:hidden path="qna_board_idx"/>
<form:hidden path="qna_user_idx" value='<%= session.getAttribute("user_idx") %>'/>
<hr>
<h1 class="h1">새로운 글 쓰기</h1>
<hr>
<p>이미지파일(.jpg .gif .png .jpeg):&nbsp;
<form:input class="file" type="file" path="original_name" accept="image/*"/>
</p>
<form:label path="content_subject">제목&nbsp;</form:label>
<form:input path="content_subject" class="form-control"/>
<form:label path="content_text">내용</form:label>
<form:textarea path="content_text" rows="10" cols="40" style="resize:none"/>
<p><form:button class="submit">작성하기</form:button></p> 
<a href="${root}board/read?qna_board_idx=3&content_idx=${content_idx}&page=${page}" class="btnList">돌아가기</a>
</form:form>
</body>
</html>