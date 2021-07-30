<%@page import="java.util.*"%>
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
	out.println("<h1>로또번호 생성 결과</h1>");
	//로또 번호 배열 선언
	int[] lotto = new int[6];
	
	out.println("이번주 로또 예상 번호는?<br/>");
	for(int i = 0; i<6; i++){
		//난수 생성
		lotto[i] = (int)(Math.random()*45 + 1);
		//중복 검사
		for(int j = 0; j<i; j++){
			while(true){
			//만약 같은 것이 있다면 그 자리에 다른 난수를 대입.
			if(lotto[j]==lotto[i]){ 
				lotto[i]=(int)(Math.random()*45 +1);
			}else{
				break;
				}
			}
		}
	}
	Arrays.sort(lotto);
	// out.println(Arrays.toString(lotto));
%>
<% 
	for (Integer num : lotto) {
		out.println(num + "&nbsp;");
		Thread.sleep(500); //CPU를 잠시 멈추는 메서드
		out.flush(); //브라우저의 출력 버퍼를 비우는 메서드.
	}
%>
</body>
</html>