<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	String userNick = request.getParameter("nick");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	if(userId.equals("kkk1234") && userPw.equals("1111")){
		session.setAttribute("session_id", userId);
		session.setAttribute("session_pw", userPw);
		session.setAttribute("session_nick", userNick);
		response.sendRedirect("session_welcome.jsp");
	}else {
		response.sendRedirect("session_login.jsp");
	}
%>
</body>
</html>