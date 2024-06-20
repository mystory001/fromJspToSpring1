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
<title>selectPro</title>
</head>
<body>
<h1>학생 조회 결과</h1>
<%
int num = Integer.parseInt(request.getParameter("num"));
%>

<%
//1) Driver.class 파일 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");

//2) 불러온 파일을 이용해 DB 연결
String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

//3) 연결정보를 이용해 SQL 구문을 만들고 실행 할 수 있는 객체 생성
String sql = "select * from student where num=?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setInt(1, num);

//4) SQL 구문 실행 → 실행 후 결과 저장(select) → ResultSet 내장 객체 저장
ResultSet rs = pstmt.executeQuery();

//5) 결과를 이용해 출력, 다른 곳에 저장(select)
//if, while 커서를 다음행 이동 → 리턴값 데이터가 있으면 true → 열 접근 출력
//							리턴값 데이터가 없으면 false → 조건문을 빠져나옴
%>

<table border="1">
<tr><td>num</td><td>name</td></tr>
<%if(rs.next()){ %>
<tr><td><%=rs.getInt("num") %></td><td><%=rs.getString("name") %></td></tr>
<%} %>
</table>

</body>
</html>