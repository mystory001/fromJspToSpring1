<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie2</title>
</head>
<body>
<!-- 
요청한 사용자 컴퓨터에 있는 쿠키값, 파라미터값, 서버 정보, 사용자 정보, 세션정보 등 요청정보를 http가 들고와서 서버에 전달
요청정보를 저장하는 내장객체 request에 저장
-->
<%
Cookie cookies[] = request.getCookies(); //request에 저장된 쿠키값 → Cookie 배열 변수에 저장

if(cookies!=null){
	out.println("쿠키 배열 크기 : " + cookies.length+"<br>");
	for(int i = 0; i < cookies.length; i++){
		//쿠키 이름 cname 찾기
		if(cookies[i].getName().equals("cname")){
			out.println("쿠키주소 : " + cookies[i] +"<br>");
			out.println("쿠키이름 : " + cookies[i].getName() +"<br>");
			out.println("쿠키값 : " + cookies[i].getValue() +"<br>");
			out.println("쿠키시간 : " + cookies[i].getMaxAge() +"<br>");
			out.println("<br>");
		}
	}
}
%>
<p>
<a href="cookie1.jsp">쿠키값 만들기</a><br>
<a href="cookie3.jsp">쿠키값 삭제</a>
</p>
</body>
</html>