<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String country = request.getParameter("travel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행지 선택</title>
</head>
<body>
<%
	if(country.equals("korea")) {
	response.sendRedirect("travel_korea.jsp");
	}else if(country.equals("taiwan")) {
	response.sendRedirect("travel_taiwan.jsp");
	}else if(country.equals("mal")) {
	response.sendRedirect("travel_mal.jsp");
	}else if(country.equals("usa")) {
	response.sendRedirect("travel_usa.jsp");
	}
%>


</body>
</html>