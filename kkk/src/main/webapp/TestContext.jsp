<%@ page import="kyungbok.Student" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    
    pageContext.setAttribute("testStudent", new Student(1901040, "����ƮIT����Ʈ����", "�����", "��⵵ �����ֽ� ������"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ǽ�</title>
</head>
<body>
	<%
		Student tStudent = (Student)pageContext.getAttribute("testStudent");
	%>
	<ul>
	<li>�� �� : <%=tStudent.getStno() %>
	<li>�� �� : <%=tStudent.getDept() %>
	<li>�� �� : <%=tStudent.getName() %>
	<li>�� �� : <%=tStudent.getAddr() %>
	</ul>
</body>
</html>