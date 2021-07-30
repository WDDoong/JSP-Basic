<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h2>로그인 정보를 입력해주세요.</h2>
	<form action="req_login.jsp" method="post">
		아이디 입력: <input type="text" name="logId"><br/>
		비밀번호 입력: <input type="password" name="logPw"><br/>
		<input type="submit" value="로그인">&nbsp;
		<input type="reset" value="초기화"><br/>
	</form>
<a href="req_join_form.jsp">회원가입하기</a>
</body>
</html>