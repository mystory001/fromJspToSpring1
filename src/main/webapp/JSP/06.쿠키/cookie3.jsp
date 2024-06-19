<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie3</title>
</head>
<body>
<!-- 
사용자 컴퓨터에서 가져 온 요청 정보(쿠키)를 서버에 전달 → request에 저장
1) request에서 쿠키값 가져오기 → 변수에 저장
2) request에 쿠키값이 있는지 확인 → if문 사용
3) for문 접근
4) if문으로 찾은 쿠키값 이름(cname) 찾기
5) 찾은 쿠키에 시간을 0으로 설정
6) response에 담아 사용자 컴퓨터에 전달
-->

<%
//1)request에서 쿠키값 가져오기
Cookie cookies[] = request.getCookies(); 

//2) request에 쿠키값이 있는지 확인 → if문 사용
if(cookies!=null){
	//3) for문 접근
	for(int i = 0; i < cookies.length; i++){
		//4) if문으로 찾은 쿠키값 이름(cname) 찾기
		if(cookies[i].getName().equals("cname")){
			//5) 찾은 쿠키에 시간을 0으로 설정
			cookies[i].setMaxAge(0);
			//6) response에 담아 사용자 컴퓨터에 전달
			response.addCookie(cookies[i]);
		}
	}
}
%>
<a href="cookie2.jsp">쿠키값 가져오기</a>
</body>
</html>