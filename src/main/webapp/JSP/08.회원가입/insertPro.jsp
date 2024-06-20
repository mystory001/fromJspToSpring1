<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertPro</title>
</head>
<body>
<h1>회원가입완료</h1>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
//Timestamp 자바내장객체 : 자바에 날짜 시간 관련 정보를 저장하는 내장객체
//시스템의 현 날짜 가져오기 : System.currentTimeMillis()
Timestamp date = new Timestamp(System.currentTimeMillis());

Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "insert into members values(?,?,?,?)";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pw);
pstmt.setString(3, name);
pstmt.setTimestamp(4, date);

pstmt.executeUpdate();

response.sendRedirect("login.jsp");
%>
입력한 아이디 : <%=id %><br>
입력한 비밀번호 : <%=pw %><br>
입력한 이름 : <%=name %><br>
가입한 시간 : <%=date %><br>
<hr>
회원가입완료 : <%=pstmt %>

</body>
</html>