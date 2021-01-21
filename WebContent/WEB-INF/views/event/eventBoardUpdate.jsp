<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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


<c:choose>
	<c:when test="${empty list}">
		<script>
			alert("해당 글은 삭제되거나 없습니다");
			history.back();
		</script>	
	</c:when>
	<c:otherwise>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>

<style>

img{ 
    width: 550px;
    height: auto;
}

body{
	margin: 110px auto;
    width: fit-content;
    text-align: center;
}
.h1{
	text-align: center;
    color: #fd357f;
}

.submit{
    position: relative;
    display: inline-block;
    padding: 0.25em 0.5em;
    text-decoration: none;
    color: #FFF;
    background: #fd357f;
    border-bottom: solid 2px #d27d00;
    border-radius: 4px;
    box-shadow: inset 0 2px 0 rgba(255,255,255,0.2), 0 2px 2px rgba(0, 0, 0, 0.19);
    font-weight: bold;
    font-size: 16px;
    cursor: pointer;
}

.btnList{
    font-size: 17px;
    background-color: lightpink;
    cursor: pointer;
}

.btnBack{
	margin: 50px 0px 0px 580px;
    font-size: 17px;
    background-color: lightpink;
    cursor: pointer;
}

</style>
</head>

<script>

function chkSubmit(){
	var frm = document.forms['frm'];
	var subject = frm['subject'].value.trim();
	
	if(subject == ""){
		alert("제목은 반드시 작성해야 합니다");
		frm["subject"].focus();
		return false;
	}
	
	return true;
}

</script>

<body>
<hr>
<h1 class="h1">글 수정하기</h1>
<hr><br>
<form name="frm" action="updateOk.do" method="post" onsubmit="return chkSubmit()">
<input type="hidden" name="writeNum" value="${list.writeNum }"/>
<img src="${pageContext.request.contextPath }/eventBoardUpload/${list.systemFileName}">
<br><br>
제목:&nbsp;
<textarea name="subject" rows="10" cols="40">${list.subject }</textarea>
<br><br>
<input class="submit" type="submit" value="수정하기"/>
</form>
<br>
<button class="btnBack" onclick="history.back()">이전으로</button>
<button class="btnList" type="button" onclick="location.href='list'">목록으로</button>
</body>
</c:otherwise>
</c:choose>

</html>