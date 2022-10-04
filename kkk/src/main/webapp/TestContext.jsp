<%@ page import="kyungbok.Student" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    
    pageContext.setAttribute("testStudent", new Student(1901040, "스마트IT소프트웨어", "이재규", "경기도 남양주시 진건읍"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>실습</title>
</head>
<body>
	<%
		Student tStudent = (Student)pageContext.getAttribute("testStudent");
	%>
	<ul>
	<li>학 법 : <%=tStudent.getStno() %>
	<li>학 과 : <%=tStudent.getDept() %>
	<li>이 름 : <%=tStudent.getName() %>
	<li>주 소 : <%=tStudent.getAddr() %>
	</ul>
</body>
</html>