<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
</head>
<body>
<!--
application
ServletContext 자바내장객체, 서버 정보를 저장한 객체
서버가 시작되면 application 내장객체가 기억장소에 할당. 서버에 하나만 할당.
서버가 정지되면 기억장소 삭제. 서버의 자원 공유 ex)방문자 수 
-->
서버 정보 : <%=application.getServerInfo() %><br>
서버 물리적인 경로 : <%=application.getRealPath("/") %>
</body>
</html>