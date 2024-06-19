<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieEx1</title>
</head>
<body>
<%
Cookie cookies[] = request.getCookies(); //쿠키값 가져오기 → 여러 개이기 때문에 배열로
String clanguageValue = "kor"; //쿠키값이 없으면 "kor"로 설정
if(cookies!=null){
	for(int i = 0; i <cookies.length; i++){
		if(cookies[i].getName().equals("clanguage")){
			out.println("쿠키 이름 : " + cookies[i].getName());
			out.println("/쿠키값 : " + cookies[i].getValue());
			clanguageValue = cookies[i].getValue(); //쿠키값을 변수에 저장
		}
	}
}

//쿠키값을 비교해서 나타내기
if(clanguageValue.equals("kor")){%>
	<h1>"한국어"</h1>
<%}else {%>
	<h1>"English"</h1>
<%} %>	
<form action="cookieEx2.jsp" method="get">
<input type="radio" name="language" value="kor" <%if(clanguageValue.equals("kor")){%>checked<%} %>>한국어(기본값)
<input type="radio" name="language" value="eng" <%if(clanguageValue.equals("eng")){%>checked<%} %>>English<br>
<input type="submit" value="언어설정">
</form>
</body>
</html>