<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewFile1.jsp</title>
</head>
<body>
<h1>*서버의 역할</h1>
<p>
1. 웹 서버 : 서버에 내용을 사용자에게 보여주는 기능<br>
2. 웹 애플리케이션 서버 : JSP, java 코드를 HTML로 변경해서 사용자에게 보여주는 기능<br>
</p>
<hr>
<h1>*form 태그</h1>
<p>-동작방법<br>
1) 폼 내용을 입력<br>
2) 폼 안에 있는 모든 데이터를 웹 서버로 전송<br>
3) 웹 서버는 받은 폼 데이터를 처리가히 위해 웹 프로그램으로 넘김<br>
4) 웹 프로그램은 폼 데이터를 처리<br>
5) 처리결과에 따른 새로운 html 페이지를 웹 서버에 보냄<br>
6) 웹 서버는 받은 html 페이지를 브라우저에 보냄<br>
7) 브라우저는 받은 html 페이지를 보여줌<br>
</p>
<p>-폼 태그 속성<br>
action : 폼을 전송할 서버 쪽 스크립트 파일을 지정<br>
name : 폼을 식별하기 위한 이름을 지정<br>
method : 폼을 서버에 전송할 http 메소드를 지정(get 또는 post)<br>
</p>
<hr>
<form action="NewFile1Pro.jsp" method="get">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="pw"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>