<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이벤트게시판 글쓰기</title>

<style>

body{
	margin-top: 100px;
}

.frm{
	margin: 110px auto;
    width: fit-content;
    text-align: center;
}

.btnList{
    margin: 50px 0px 0px 580px;
    font-size: 17px;
    background-color: lightpink;
    cursor: pointer;
}

.h1{
	text-align: center;
    color: #fd357f;
}

.submit {
    position: relative;
    display: inline-block;
    padding: 0.25em 0.5em;
    text-decoration: none;
    color: #FFF;
    background: #fd357f;/*button color*/
    border-bottom: solid 2px #d27d00;/*daker color*/
    border-radius: 4px;
    box-shadow: inset 0 2px 0 rgba(255,255,255,0.2), 0 2px 2px rgba(0, 0, 0, 0.19);
    font-weight: bold;
    font-size: 16px;
    cursor: pointer;
}

.submit:active {
    border-bottom: solid 2px #fd9535;
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.30);
}


</style>

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
<form class="frm" name="frm" action="writeOk" method="post" enctype="multipart/form-data" onsubmit="return chkSubmit()">
<input type="hidden" value="<%= session.getAttribute("accNum") %>" name="accNum"/>
<hr>
<h1 class="h1">새로운 글 쓰기</h1>
<hr>
<p>이미지파일(.jpg .gif .png .jpeg):&nbsp;<input class="file" type="file" name="file"/></p>
<p>제목:&nbsp;</p>
<textarea name="subject" rows="10" cols="40"></textarea>
<p><input class="submit" type="submit" value="작성완료"/></p> 
<button class="btnList" type="button" onclick="location.href='list'">돌아가기</button>
</form>

</body>
</html>