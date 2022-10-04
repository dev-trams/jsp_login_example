<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
String chkVal = request.getParameter("inactiveToday");
//이전 페이지의 체크박스 체크 여부값을 받아와서 저장 
if (chkVal != null && chkVal.equals("1")) {
	Cookie cookie = new Cookie("PopupClose", "off");
	//쿠키 객체를 생성 popupMode 값을 off로 변경 
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(5); //유지기간 설정 
	response.addCookie(cookie); //응답 객체에 추가
	out.println("쿠키 : 하루동안 열지 않음");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>