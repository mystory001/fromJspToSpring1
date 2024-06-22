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
<title>updatePro</title>
</head>
<body>
<h1>회원 정보 수정 처리</h1>
<%
request.setCharacterEncoding("UTF-8");

//request에서 id,pw, name 태그값 가져와서 변수에 저장
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");

Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "select * from members where id=? and pw=?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pw);

ResultSet rs = pstmt.executeQuery();
if(rs.next()){
	out.println("정보 일치");
	String sql1 = "update members set name=? where id=?";
	PreparedStatement pstmt1 = connection.prepareStatement(sql1);
	pstmt1.setString(1, name);
	pstmt1.setString(2, id);
	pstmt1.executeUpdate();
	
	response.sendRedirect("main.jsp");
} else {
	out.println("정보 불일치");
	response.sendRedirect("update.jsp");
}
%>
</body>
</html>