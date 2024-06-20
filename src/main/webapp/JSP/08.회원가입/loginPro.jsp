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
<title>loginPro</title>
</head>
<body>
<h1>로그인</h1>
<!-- 
폼에서 입력한 내용이 서버에 전달 
→ 서버에 request 내장객체에 저장
→ request에 id, pw 태그값(파라미터값)을 가져와서 변수에 저장
-->

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

Class.forName("com.mysql.cj.jdbc.Driver");

String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

String sql = "select * from members where id=? and pw=?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pw);

//SQL 구문 실행 → 실행 후 결과 저장(select) → ResultSet 내장객체 저장
ResultSet rs = pstmt.executeQuery();

if(rs.next()){
	out.println("로그인 성공<br>");
	out.println(pstmt);
	session.setAttribute("id", id); //세션에 로그인 표시 저장
	response.sendRedirect("main.jsp");
}else{
	out.println("로그인 실패<br>");
	out.println(pstmt);
	response.sendRedirect("login.jsp");
}
%>


</body>
</html>