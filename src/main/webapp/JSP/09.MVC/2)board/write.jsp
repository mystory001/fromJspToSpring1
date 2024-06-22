<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>
<h1>글쓰기</h1>
<%
request.setCharacterEncoding("utf-8");

String id = (String)session.getAttribute("id");
%>
<form action="writePro.jsp" method="post">
<table border="1">
<tr><td>이름</td><td><input type="text" name="name" value="<%=id %>" readonly="readonly"></td></tr>
<tr><td>제목</td><td><input type="text" name="subject"></td></tr>
<tr><td>내용</td><td><textarea rows="20" cols="50"></textarea> </td></tr>
<tr><td colspan="2"><input type="submit" value="글쓰기"></td></tr>
</table>
</form>
</body>
</html>