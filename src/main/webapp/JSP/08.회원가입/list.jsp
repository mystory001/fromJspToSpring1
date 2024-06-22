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
<title>list</title>
</head>
<body>
<h1>회원목록</h1>
<%
request.setCharacterEncoding("utf-8");

//세션에 id 값을 가져오기
String id = (String)session.getAttribute("id");

if(id==null){
	response.sendRedirect("login.jsp");
} else{
	if(!id.equals("admin")){
		response.sendRedirect("main.jsp");
	}
}

Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "select * from members";
PreparedStatement pstmt = connection.prepareStatement(sql);

ResultSet rs = pstmt.executeQuery();
%>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%while(rs.next()){ %>
<tr><td><%=rs.getString("id") %></td><td><%=rs.getString("pw") %></td><td><%=rs.getString("name") %></td><td><%=rs.getTimestamp("date") %></td></tr>
<%} %>
</table>
<a href="main.jsp">메인으로</a><br>
</body>
</html>