<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int total = 0;
%>
<%
	
	total++;
	out.println("페이지 누적 요청 수 : " + total);
	out.println("<br>");
	out.println("매 <b>10</b>번째 방문자에게는 기프티콘을 드립니다.</br>");
	
	if(total%10 == 0 ){
		out.println("<b><I>당첨되셨습니다!</I></b>");
	}
	out.println("<hr>");
	
	
	Random random = new Random();
	
	int guNum = random.nextInt(8) + 2;
	out.println("<h2>랜덤 구구단" + "(" + guNum +"단)</h2>");
	for(int j = 1; j <= 9; j++){
		out.println(guNum + " * " + j + " = " + (guNum*j));
		out.println("</br>");
	}
	
%>


</body>
</html>