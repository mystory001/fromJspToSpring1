<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
<h1>회원 정보 수정</h1>
비밀번호가 일치하면 이름 변경
<%
request.setCharacterEncoding("utf-8");

String id = (String)session.getAttribute("id");

Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "select * from members where id=?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs = pstmt.executeQuery();

if(rs.next()){
%>
<form action="updatePro.jsp" method="post">
아이디 : <input type="text" name="id" value="<%=rs.getString("id") %>" readonly="readonly"><br>
비밀번호 : <input type="password" name="pw"><br>
이름 : <input type="text" name="name" value="<%=rs.getString("name") %>"><br>
<input type="submit" value="회원정보수정">
</form>
<%} %>
</body>
</html>