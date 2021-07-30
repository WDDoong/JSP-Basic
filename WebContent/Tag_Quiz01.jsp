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
	int pgtotal = 0;

%>
<%
	int each = 0;
	each++;
	pgtotal++;
	
	// 행운의 색깔
	double dValue = Math.random();
	String color = "";

	// out.println("dValue : " + dValue);
	
	if(dValue >= 0.33 && dValue < 0.66){
		color = "노랑";
	}else if(dValue >= 0.66 && dValue <= 1){
		color = "빨강";
	}else{
		color = "파랑";
	}
	
	// 행운의 숫자
	Random random = new Random();

	int luckNum = random.nextInt(10) + 1;
	out.println("<h2>Web 프로그래밍</h2>");
	out.println("<br>");
	
	out.println("페이지 누적 요청수 : "+ pgtotal + " 페이지 개별 요청수 : " + each);
	
	out.println("<h3>오늘의 행운의 숫자와 행운의 색깔</h3>");
	
	out.println("행운의 숫자 : <b>" + luckNum + "</b><br/>");
	out.println("행운의 색깔 : <I>" + color + "</I><br/>");
	

%>


</body>
</html>