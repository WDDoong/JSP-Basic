<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		for(int i = 1; i<=9; i++){
			
			if(i== 1 || i%2 == 0) continue;
			
			out.println("<h3>구구단 "+i+"단</h3>");
			out.println("<hr/>");
			for(int j = 1; j <= 9; j++){
				out.println(i + " * " + j + " = " + (i*j));
				out.println("<br>");
			}
		}
	%>
	
</body>
</html>