<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL 삽입 공격</title>
</head>
<body>
<h1>로그인 화면(SQL 삽입)</h1>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "select * from members where id='"+id+"' and pw='"+pw+"'"; 
Statement statement = connection.createStatement();

ResultSet rs = statement.executeQuery(sql);

if(rs.next()){
	out.println("아이디, 비밀번호 일치<br>");
	out.println("로그인 성공<br>");
	out.println(statement);
	session.setAttribute("id", id);
	response.sendRedirect("main.jsp");
}

%>
</body>
</html>