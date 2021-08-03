<%@page import="jdk.internal.org.objectweb.asm.tree.analysis.Value"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 0. post방식 받아오기 처리.
	response.setCharacterEncoding("utf-8");
	
	// 1. 아이디 비밀번호 받아오기.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 2. checkbox가 체크되었는지 여부 받아오기.
	String checkId = request.getParameter("id_check");
	String checkPw = request.getParameter("pw_check");
	System.out.println(checkId);
	System.out.println(checkId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 아이디는 abc1234, 비밀번호는 aaa1111로 처리합니다.
	if(id.equals("abc1234") && pw.equals("aaa1111")){
		// 로그인 처리를 위한 쿠키 발급
		// 쿠키이름 "user_Id", 쿠키값은 로그인할 때 사용한 id
		// 지속시간은 20초
		// 완성 후 쿠키 발송
		Cookie idCookie = new Cookie("user_Id", id);		
		idCookie.setMaxAge(1800);
		response.addCookie(idCookie);
		// 체크박스가 체크되어 있을 경우, 아이디와 비밀번호 자동입력을 위한 쿠키 발급
		// 20초 주고, 
		// "remember_id", "remember_pw"를 쿠키 이름으로
		// id, pw 를 쿠키 값으로 가지는 쿠키 2개를 생성, 발송하자
		// 단, 쿠키 발급은 checkId, checkPw값이 yes인 경우에만 발급합니다.
		if(checkId != null && checkId.equals("yes")){
			Cookie logId = new Cookie("remember_id", id);
			logId.setMaxAge(1800);
			response.addCookie(logId);
		} 
		if(checkPw != null && checkPw.equals("yes")){
			Cookie logPw = new Cookie("remember_pw", pw);
			logPw.setMaxAge(1800);
			response.addCookie(logPw);
		}
		// 로그인 성공시 cookie_welcome.jsp로 보내주고
		response.sendRedirect("cookie_welcome.jsp");
		// 로그인 실패시 "로그인에 실패했습니다."라고 브라우저에 띄워주세요.
	}else{
		out.println("로그인에 실패했습니다.");
	}
%>
</body>
</html>