<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<h1>메인</h1>
<%=session.getAttribute("id") %>님 환영합니다.<br>

<%
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date lastAccessTime = new Date(session.getLastAccessedTime());
String formattedTime = dateFormat.format(lastAccessTime);
%>

마지막으로 로그인한 시간 : <%=formattedTime %><br>
<a href="logout.jsp">로그아웃</a>
</body>
</html>