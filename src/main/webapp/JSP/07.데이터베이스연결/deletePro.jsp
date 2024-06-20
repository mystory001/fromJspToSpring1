<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deletePro</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
int num = Integer.parseInt(request.getParameter("num"));
%>

<%
Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql ="delete from student where num=? and name=?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setInt(1, num);
pstmt.setString(2, name);

pstmt.executeUpdate();
%>
학생삭제성공 : <%=pstmt%>
</body>
</html>