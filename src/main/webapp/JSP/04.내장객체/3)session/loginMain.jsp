<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginMain</title>
</head>
<body>
<h1>loginMain.jsp</h1>
<%
if(session.getAttribute("id")!=null){
	String userId = (String)session.getAttribute("id");
%>
	<%=userId%>님이 로그인하셨습니다.
	<a href="logout.jsp"><input type="button" value="로그아웃"></a>
<% } else{ %>
	<p>잘못된 접근입니다.</p>
	<a href="login.jsp"><input type="button" value="로그인"></a>
<%} %>
</body>
</html>