<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이벤트</title>

<style>
.he{
	padding-left: 103px;
	color: #fd357f;
}
hr{
	width: 86%;
}
.tr{
	width: calc(100% / 3);
    display: block;
    float: left;
    height: 400px;
}
.td1{
    width: 100%;
    float: left;
    text-align: center;
    height: 300px;
    vertical-align: middle;
    line-height: 27;
    position: relative;
}
.td1 img{
    width: 300px;
    height: 250px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
.td2{
	width: 100%;
    text-align: center;
    display: block;
}

.btn1 {
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
    margin-left: 103px;
    font-size: 16px;
    cursor: pointer;
}

.btn1:active {
    border-bottom: solid 2px #fd9535;
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.30);
}

 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: #fd357f; text-decoration: none;}
 
</style>

</head>
<body>

<h3 class="he">이벤트</h3>
<hr>

<c:choose>

	<c:when test="${sessionScope.isAdmin ne 'YES'}">
		
		<c:choose>
		
			<c:when test="${empty list || fn.length(list) == 0 }">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글이 없습니다<br>
			</c:when>
	
		<c:otherwise>
		<table style="width:100%">
			<c:forEach var="dto" items="${list }" >
				<tr class="tr">
					<td class="td1"><a href="view?writeNum=${dto.writeNum}"><img src="${pageContext.request.contextPath }/eventBoardUpload/${dto.systemFileName}"></a></td>
					<td class="td2"><a href="view?writeNum=${dto.writeNum}">${dto.subject}</a></td>
				</tr>
			</c:forEach>
		</table>
		</c:otherwise>
		</c:choose>
	</c:when>

	<c:otherwise>
	
	<c:choose>

	<c:when test="${empty list || fn.length(list) == 0 }">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글이 없습니다<br>
	</c:when>
	
	<c:otherwise>
		<table style="width:100%">
		<c:forEach var="dto" items="${list }" >
			<tr class="tr">
				<td class="td1"><a href="view?writeNum=${dto.writeNum}"><img src="${pageContext.request.contextPath }/eventBoardUpload/${dto.systemFileName}"></a></td>
				<td class="td2"><a href="view?writeNum=${dto.writeNum}">${dto.subject}</a></td>
			</tr>
		</c:forEach>
		</table>
	</c:otherwise>
	</c:choose>
	
		<br>
		<button class="btn1" onClick="location.href='write'">글쓰기</button>

	</c:otherwise>
</c:choose>

</body>
</html>