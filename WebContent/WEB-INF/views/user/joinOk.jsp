<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result == 0 }">
	<script>
		alert("등록 실패!!!!!!");
		history.back();
	</script>
</c:if>
<c:if test="${result > 0 }">
	<script>
		alert("등록 성공. 로그인창으로 이동합니다.");
		location.href = "login";
	</script>			
</c:if>
    
    