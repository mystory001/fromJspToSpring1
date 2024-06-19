<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
<!-- 
pageContext 
페이지 실행에 필요한 컨텍스트 정보(프로젝트 한 페이지 정보)를 저장한 객체
페이지가 바뀌면 새로운 페이지 정보로 내장 객체를 생성하고, 기존 내장객체가 사라짐
-->
현 페이지 request 정보 : <%=pageContext.getRequest() %><br>
현 페이지 response 정보 : <%=pageContext.getResponse() %><br>
현 페이지 session 정보 : <%=pageContext.getSession() %>
</body>
</html>