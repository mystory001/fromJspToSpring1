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
<title>select</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "select * from student";
PreparedStatement pstmt = connection.prepareStatement(sql);

//sql 구문 실행 → 실행 후 결과 저장 → ResultSet 내장객체 저장
//ResultSet sql 구문을 실행한 결과를 저장하는 내장 객체
ResultSet resultSet = pstmt.executeQuery();

//커서를 다음 행으로 이동 next, 처음 행으로 이동 frist, 마지막 행으로 이동 last, 이전 행으로 이동 previous
// → return 값 데이터가 있으면 true, 없으면 false
%>

<table border="1">
<tr><td>num</td><td>name</td></tr>
<% 
while(resultSet.next()){
%> <tr><td><%=resultSet.getInt("num") %></td><td><%=resultSet.getString("name") %></td></tr>
<% }%>	
</table>
</body>
</html>