<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행 안내 페이지</title>
</head>
<body>
<%-- 1. 폼을 만들어주세요. 폼은 travel_check.jsp를 목적지로 가집니다. 
	 2. post방식으로 데이터를 전송합니다.
	 3. radio 버튼으로 관심사에 대한 항목을 나열합니다. (최소 4개)
	 4. radio버튼을 선택하고 submit을 누르면 각 radio의 value값을 분석해
	 	travel_check.jsp 내부 로직이 travel_도시이름.jsp로 리다이렉트 해줍니다.
	 5. travel_도시이름.jsp 결과 페이지는 관련도시의 유튜브영상을 게시해주면 됩니다. --%>
<form action="travel_check.jsp" method="get">
<div style="line-height:150%;">
	한국<input type="radio" name="travel" value="korea"><br>
	미국<input type="radio" name="travel" value="usa"><br>
	대만<input type="radio" name="travel" value="taiwan"><br>
	말레이시아<input type="radio" name="travel" value="mal"><br>
	<input type="submit" value="선택"><br>
</div>
</form>


</body>
</html>