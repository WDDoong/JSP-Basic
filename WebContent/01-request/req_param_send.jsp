<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체에 파라미터 전달 예제</title>
</head>
<body>
	<!-- form태그의 action은 데이터가 전달될 목적지이다.
	현재, req_param_getpost로 보낼 예정이다. -->
	<form action="req_param_getpost.jsp" method="post"> 
	<!-- 가장 기본이 되는 input태그 -->
		<input type="text" name="id"/>아이디<br>
		<input type="text" name="nick"/>닉네임<br>
		<input type="password" name="pw"/>비밀번호<br>
		
	<!-- 체크박스 -->
		취미:
		<input type="checkbox" name="hobby" value="요리">요리&nbsp;
		<input type="checkbox" name="hobby" value="운동">운동&nbsp;<br>
	<!-- 특기 체크박스 추가, 최소 5개 이상 -->
		특기:
		<input type="checkbox" name="specialty" value="자전거">자전거운전&nbsp;
		<input type="checkbox" name="specialty" value="자동차">자동차운전&nbsp;
		<input type="checkbox" name="specialty" value="롱보드">롱보드&nbsp;
		<input type="checkbox" name="specialty" value="숏보드">숏보드&nbsp;
		<input type="checkbox" name="specialty" value="스케이트">스케이트&nbsp;
		<br/>
	<!-- 성별 하나만 골라야 하므로 radio를 사용합니다. -->
		성별:
		<input type="radio" name="gender" value="male">남성&nbsp;
		<input type="radio" name="gender" value="female">여성&nbsp;
		<br/>
		혼인상태:
		<input type="radio" name="married" value="married">기혼&nbsp;
		<input type="radio" name="married" value="single">미혼&nbsp;
		<br/>
	<!-- select태그는 선택지를 드롭박스로 줍니다. -->
		지역:
		<select name="region">
			<option>서울</option>
			<option>경기</option>
			<option>충청</option>
			<option>전라</option>
			<option>경상</option>
			<option>강원</option>
			<option>제주</option>
		</select><br>
		
		
		<input type="submit"/>	
		<input type="reset"/> 	
	</form>

</body>
</html>