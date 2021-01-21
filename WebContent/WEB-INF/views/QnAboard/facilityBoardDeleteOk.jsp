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


<c:if test="${result == 0 }">
	<script>
		alert("삭제실패 !!!!");
		history.back();    // 브라우저가 직전에 기억하는 페이지로
	</script>
</c:if>
<c:if test="${result > 0 }">
	<script>
		alert("삭제 성공, 리스트 출력합니다");
		location.href = "list";
	</script>
</c:if>