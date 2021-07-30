<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String h = request.getParameter("height");
	String w = request.getParameter("weight");
	
	double cm = Double.parseDouble(h);
	double kg = Double.parseDouble(w);
	
	// BMI 지수 계산공식[체중/신장(m) * 신장(m)]
	double bmi = kg/(cm/100 * cm/100);
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI체질량 지수 계산</title>
</head>
<body>
	 
	<h2>BMI 계산 웹어플리케이션</h2>
	<hr>
	- 신장 : <%=h %>cm<br/>
	- 체중 : <%=w %>kg<br/>
	BMI지수:<b><%=bmi %></b><br>
	<%if(bmi>23){%> 
	<b>과체중</b>
	<%}else if(bmi<18.5){%>
	<b>저체중</b>
	<%}else {%>
	<b>정상</b>
	<%} %>
</body>
</html>