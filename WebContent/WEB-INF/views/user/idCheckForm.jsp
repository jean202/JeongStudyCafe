<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
</head>
<script>
	function pValue() {
		document.getElementById("userId").value = opener.document.userInfo.id.value;
	}
	function idCheck() {
		
		var id = document.getElementById("userId").value;
		
		if(!id){
			alert("아이디가 입려되지 않았습니다.");
			return false;
		} else if ((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")) {
			alert("한글 및 특수문자는 사용할 수 없습니다.");
			return false;
		} else {
			var param = id;
			httpRequset =  getXMLHttpRequest();
			httpRequset.onreadystatechange = callback();
			httpRequset.open("POST", "MemberIdCheckCommand", true);
			httpRequset.setRequestHeader('Context-Type', 'application/x-www-form-urlencoded')
			httpRequset.send(param)
		}
	}
	function callback() {
		if(httpRequest.readyState == 4) {
			var resultText = httpRequset.responseText;
			if (resultText == 0) {
				alert("사용할 수 없는 아이디입니다.");
				document.getElementById("cancelBtn").style.visibility='visible';
				document.getElementById("useBtn").style.visibility='hidden';
				document.getElementById("msg").innerHTML = "";
			} else if(resultText == 1) {
				document.getElementById("cancelBtn").style.visibility='hidden';
				document.getElementById("useBtn").style.visibility='visible';
				document.getElementById("msg").innerHTML = "사용할 수 있는 아이디 입니다.";
			}
		}
	}
</script>
<body onload="pValue()">
	<div id="wrap">
		<br>
		<b><font size="4" color="gray">아이디 중복체크</font></b>
		<br>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="idinput" id="userId">
				<input type="button" value="중복확인" onclick="idCheck()">
			</form>
			<div id="msg"></div>
			<br>
			<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
			<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
		</div>
	</div>
</body>
</html>