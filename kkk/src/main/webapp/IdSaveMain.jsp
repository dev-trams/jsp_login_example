<%@ page import="kkk.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String loginId = Manager.readCookie(request, "loginId");
//Manager클래스에서 만든 메소드중 readCookie메소드를 실행해서 쿠키값을 반환받아서
//문자열 변수에 저장 
String coockieCheck = "";
String loginCode = Manager.readCookie(request, "loginCode");
String codeCheck = "";
if (!loginId.equals("")) {
	//loginId 변수에 값이 있는 경우 
	coockieCheck = "checked";
	codeCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 저장하기</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="Saveprocess.jsp" method="post">
		아 이 디 : <input type="text" name="user_id" value="<%=loginId%>">
		<input type="checkbox" name="save_check" value="Y" <%=coockieCheck%>>
		아이디 저장하기 <br> 
		패스워드 : <input type="password" name="user_pw"><br>
		보안코드 : <input type="text" name="login_code" value="<%=loginCode%>">
		<input type="checkbox" name="save_code" value="Y" <%=codeCheck%>>
		보안코드 저장하기 <br> 
		<input type="submit" value="로그인하기">
	</form>
</body>w
</html>  