<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:choose>
	<c:when test="${empty list}">
		<script>
			alert("해당 정보가 삭제되거나 없습니다.");
			history.back();
		</script>
	</c:when>
<c:otherwise>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>읽기${list.subject }</title>

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
.btn{
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
</style>
</head>

<script>
function chkDelete(writeNum, systemFileName){
//삭제여부, 확인하고 진행하기
var r = confirm("삭제하시겠습니까?");

if(r){
	location.href = "deleteOk?writeNum=" + writeNum + "&systemFileName=" + systemFileName;	
}

}
</script>

<body>
<hr>
<h2>${list.subject }</h2>
<hr><br>
<img src="${pageContext.request.contextPath }/facilityBoardUpload/${list.systemFileName}">
<br><br>
<button class="btn" onclick="location.href='list'">목록보기</button>
<c:if test="${sessionScope.isAdmin eq 'YES'}">
		<button class="btn" onclick="location.href='update?writeNum=${list.writeNum }'">수정하기</button>
		<button class="btn" onclick="chkDelete(${list.writeNum}, '${list.systemFileName}')">삭제하기</button>
		<button class="btn" onclick="location.href='write'">새글등록</button>
</c:if>
</c:otherwise>
</c:choose>
</body>
</html>