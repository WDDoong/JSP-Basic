<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 창 만든 이후에 이미 로그인된 사람이 로그인 창으로 오면
	// 바로 로그인 완료 창으로 보내주기 위해 작성할 부분입니다.
	// "user_id" 쿠키 존재 여부를 따져서 리다이렉트 시킵니다.
	
	
	
	// 만약 아이디&비밀번호 기억하기가 체크되어 있는 경우
	// 처리해주기 위해 쿠키에서 아이디&비밀번호 값을 추출하는 로직
	// cookie_welcome.jsp 상단의 로직을 참고.
	// 추출한 아이디, 비밀번호를 콘솔창에 찍어주세요.
	Cookie[] cookies = request.getCookies();
	String userId = "";
	String userPw = "";
	
	// cookies 변수에 쿠키가 여러개가 들어있다.
	// 반복문을 이용해 하나하나 c에 번갈아가면서 한번씩 대입해서 코드 진행.
	for(Cookie c : cookies){
		// 개별 쿠키의 이름을 cookieName변수에 저장
		String cookieName = c.getName();
		
		// 저장한 쿠키의 이름이 "remember_id"인 경우
		if(cookieName.equals("remember_id")){
			
			// userId 변수,  remember_id 변수에 저장해둔
			// 로그인 아이디를 저장.
			userId = c.getValue();
			}
		
		// 저장한 쿠키의 이름이 "remember_pw"인 경우
		if(cookieName.equals("remember_pw")){
			
			// userPw 변수,  remember_pw 변수에 저장해둔
			// 로그인 아이디를 저장.
			userPw = c.getValue();
		}
	}
	// 저장받은 아이디&패스워드가 실제로 대입되었는지 확인.
	System.out.println(userId);
	System.out.println(userPw);
	
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 로그인 폼에는 check box를 이용해 자동로그인 여부까지 체크합니다. --%>
	<form action="cookie_login_ok.jsp" method="post">
		<input type="text" name="id" placeholder="ID"
		value="<%=userId%>"/>
		<br/>
		<input type="password" name="pw" placeholder="PW"
		value="<%=userPw%>"/>
		<br/>
		
		<input type="checkbox" name="id_check" value="yes"/>
		아이디 기억하기<br/>
		<input type="checkbox" name="pw_check" value="yes"/>
		비밀번호 기억하기<br/>
	
		<input type="submit" value="로그인"/>
		
	</form>



</body>
</html>