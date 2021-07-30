<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%     
    String strAge = request.getParameter("age");
	int age = Integer.parseInt(strAge);
	
	if(age >= 20) {
		response.sendRedirect("res_ok.jsp");
	}else{
		response.sendRedirect("res_no.jsp");
	}
%>
	<h1>만19세 이하의 미성년자는 술을 살 수 없습니다.</h1>
</body>
</html>