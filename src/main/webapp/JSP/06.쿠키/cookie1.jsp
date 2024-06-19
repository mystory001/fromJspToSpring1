<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie</title>
</head>
<body>
<!-- 
*쿠키(Cookie)
JSP 내장객체가 아니며, 자바내장객체. 객체를 생성해서 사용.
페이지, 서버, 사용자 컴퓨터에 상관없이 값을 유지.
서버에서 값을 만들어서 사용자 컴퓨터 하드웨어에 저장. ex) 아이디, 비밀번호 저장
클라이언트측에서 관리되는 정보.

*쿠키, 세션의 공통점과 차이점
공통점 : 값이 유지함
구체적으로는 세션은 연결정보를 저장하여 페이지에 상관없이 값이 유지되며,
쿠키는 페이지, 서버, 사용자 컴퓨터에 상관없이 값을 유지함.

차이점
세션은 서버측에서 저장 관리되며 보안이 필요한 값을 저장(로그인 정보),
쿠키는 사용자에 정보가 저장되며 보안이 취약한 면이 있기 때문에 보안과 상관없는 값을 저장, 서버에 부하없이 사용 가능

*쿠키 생성 방법
1) http 헤더를 이용한 쿠키 설정
2) 서블릿 API를 이용한 쿠키 설정(Cookie 자바내장객체)
 -->
 
<%
Cookie cookie = new Cookie("cname","cookieValue");//쿠키값 만들기 Cookie 객체 생성 → 서버에 저장

cookie.setMaxAge(1800); //Cookie 유지시간설정(초)
response.addCookie(cookie); //서버에 만들어진 쿠키값 → 사용자 컴퓨터에 전달해서 파일로 저장
%>

쿠키 : <%=cookie %><br>
쿠키이름 : <%=cookie.getName() %><br>
쿠키값 : <%=cookie.getValue()%><br>
쿠키설정시간 : <%=cookie.getMaxAge() %><br>
<p><a href="cookie2.jsp">쿠키값 가져오기</a></p>
</body>
</html>