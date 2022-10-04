<%@ page import="kkk.Manager" %>
<%@ page import="kkk.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String user_id= request.getParameter("user_id");
    //이전 폼에 ㅎ당 이름을 가지고 있는 컴포넌트의 입력값을 변수에 저장한다.
    String user_pw = request.getParameter("user_pw");
    String save_check = request.getParameter("save_check");
    String login_code = request.getParameter("login_code");
    String code_check = request.getParameter("code_check");
    
    if("kppcgold".equals(user_id) && "1234".equals(user_pw) && "trams".equals(login_code)){ 
    	//입력한 내용과 이전에 설정한 내용이 같을 경우(로그인 성공)
    	if(save_check != null && save_check.equals("Y") && code_check != null && code_check.equals("Y")) {	
        	Manager.makeCookie(response, "loginId", user_id, 86400);//쿠키 생성	
        	Manager.makeCookie(response, "loginCode", login_code, 86422);
        }else { //체크박스에 체크가 되어 있지 않은 이유
        	Manager.deleteCookie(response, "loginId");
        	Manager.deleteCookie(response, "loginCode");
            	//쿠키 삭제 
    	}
    	JSFunction.alertLocation("로그인에 성공했습니다.", "./Success.jsp", out);
    	//alertLocation메소드를 홏ㄹ해서 해당 메시지를 알림창에 띄우고 success.jsp로 이동
    } else { //로그인 실패의 경우
    	JSFunction.alertBack("로그인이 실패했습니다.", out);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>