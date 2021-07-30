<%@ page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 한글 데이터가 POST 전송시 깨지지 않도록 처리.
	request.setCharacterEncoding("utf-8");
	
	//폼에서 보낸 데이터를 받기 위해서는 request.getParameter("name값")을 활용한다.
	// name = "apple"에서 보낸 데이터를 받기 위해서는
	String id = request.getParameter("id");
	// name = "banana"에서 보낸 데이터를 받기 위해서는
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	// String hobby = request.getParameter("hobby");
	// 체크박스는 복수의 데이터가 넘어올 수 있기 때문에
	// request.getParameterValues("name명")를 사용합니다.
	String[] hobby = request.getParameterValues("hobby");
	String[] spc = request.getParameterValues("specialty");
	
	String gender = request.getParameter("gender");
	String wedding = request.getParameter("married");
	String region = request.getParameter("region");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디: <b><%= id %></b><br/>
	비밀번호: <b><%= pw %></b><br/>	
	색상: <b><%= nick %></b><br/>
	취미:
	<%for(String name : hobby){ %>	
	<b><%=name%></b>&nbsp;
	<%} %>
	
	취미:<%=Arrays.toString(hobby) %><br/>
	
	특기:
	<%for(String name : spc){ %>
	<b><%=name%></b>&nbsp;
	<%} %>
	
	특기:<%=Arrays.toString(spc) %><br/>
	성별: <b><%=gender %></b><br/>
	혼인상태: <b><%=wedding %></b><br/>
	지역: <b><%=region %></b><br/>
	
</body>
</html>