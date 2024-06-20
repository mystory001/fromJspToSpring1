<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updatePro</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
int num = Integer.parseInt(request.getParameter("num"));
%>
수정하기 전 이름 : <%=name %>
<%


Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "update student set name=? where num=?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setInt(2, num);

pstmt.executeUpdate();
%>
학생 이름 수정 성공 : <%=pstmt %>
</body>
</html>