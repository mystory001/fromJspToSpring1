<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBCTest</title>
</head>
<body>
<%
//1) Driver.class 파일 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");

//2) 불러 온 파일을 이용해서 데이터베이스 연결 → 연결 정보 저장
String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);
%>
연결 성공 : <%=connection %>
</body>
</html>