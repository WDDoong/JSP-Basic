<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String logId = request.getParameter("logId");
	String logPw = request.getParameter("logPw");
%>    
    
<!DOCTYPE html>
<html>

<% if(logId.equals("abcd") && logPw.equals("1234")) { %>

<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<b><%= logId %></b>님 환영합니다.
</body>

<% } else if(logId.equals("abcd")){ %>

<head>
<meta charset="UTF-8">
<title>로그인 실패(비번 불일치)</title>
</head>
<body>
<b>로그인에 실패하였습니다.</b><br/>
<b>비밀번호가 다릅니다.</b><br/>
<a href="req_login_form.jsp">로그인 창으로 돌아가기</a>
</body>

<% } else { %>

<head>
<meta charset="UTF-8">
<title>로그인 실패(둘 다 불일치)</title>
</head>
<body>
<b>로그인에 실패하였습니다.</b><br/>
<b>아이디가 없거나 틀렸습니다.</b><br/>
<a href="req_login_form.jsp">로그인 창으로 돌아가기</a>
<%} %>
</body>

</html>