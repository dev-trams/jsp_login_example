<%@ page import="kkk.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //속성저장
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "패이지 영역의 문자열");
    pageContext.setAttribute("pagePerson", new Person("이순신", 56));
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page영역</title>
</head>
<body>
<h2>page 영역의 속성값 읽기</h2>
<%
	//속성값 읽어오기
	int pInteger = (Integer)pageContext.getAttribute("pageInteger");
//getAttribute메소드를 사용해서 가져온 값은 기본적으로 String임.
//String을 강제로 integer형으로 변환하여 정수형 변수에 저장
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)pageContext.getAttribute("pagePerson");
	//String을 강제로 Person형으로 변환하여 Person형 변수에 저장
%>
<ul>
<li>Integer 객체 : <%=pInteger %>
<li>String 객체 : <%=pString %>
<li>Person 객체 : <%=pPerson.getName() %>, <%=pPerson.getAge() %>
</ul>
</body>
</html>