<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String popupMode = "on";
//popupMode 변수에 저장되는 기본값을 on으로 한다. 
//이 값이 off로 변경되면 팝업창이 뜨지 않도록 한다. 
Cookie[] cookies = request.getCookies();
//쿠키정보값을 받아서 배열 객체에 저장한다. 
if (cookies != null) {
	for (Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if (cookieName.equals("PopupClose")) {
	//쿠키이름이 PopupClose일 경우 
	popupMode = cookieValue;
		}
	}

}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리</title>
</head>
<style>
div#popup {
	position: absolute;
	top: 100px;
	left: 100px;
	color: yellow;
	width: 300px;
	height: 100px;
	background-color: gray;
}

div#popup div {
	position: relative;
	top: 0px; border =1 solid gray;
	padding: 10px;
	color: black;
	background-color: white;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	
</script>
<script>
	$(function() {
		$('#closeBtn').click(function() {
			//colseBtn 이름의 컴포넌트(버튼)을 클릭했을 때 실행되는 코드
			$('#popup').hide();
			//팝업창이 사라지게 한다. 
			var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
			//하루동안 열지않음 체크박스가 체크가 되어있는지 여부를 저장하는 변수 
			$.ajax({
				url : './popupCookies.jsp',
				type : 'get',
				data : {
					inactiveToday : chkVal
				},
				dataType : "text",
				success : function(resData) {
					if (resData != "")
						location.reload();
				}
			});
		});
	});
</script>
<body>
	<h2>팝업 메인 페이지</h2>
	<%
	for (int i = 1; i <= 10; i++) {
		out.println("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
	}
	if (popupMode.equals("on")) {
	%>
	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div align="right">
			<form name="popFrm">
				<input type="checkbox" id="inactiveToday" value="1"> 하루 동안
				열지 않음 <input type="button" value="닫기" id="closeBtn">
			</form>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>