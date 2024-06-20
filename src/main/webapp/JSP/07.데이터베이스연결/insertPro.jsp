<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertPro</title>
</head>
<body>
insert에서 받아 온 정보를 jdbc를 이용하여 데이터베이스에 저장<br>
<%
//form태그 method가 post 한글처리
request.setCharacterEncoding("utf-8");

int num = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
%>
입력한 학생번호 : <%=num %><br>
입력한 학생이름 : <%=name %><br>

<%
//1) Driver.class 파일 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");

//2) 데이터베이스 연결
String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
Connection connection = DriverManager.getConnection(url, user, password);

//3) 연결 정보를 이용해서 SQL구문을 만들고 실행할 수 있는 객체 생성(SQL구문을 만들어주는 객체)
String sql = "insert into student(num,name) value(?,?)";
PreparedStatement pstmt = connection.prepareStatement(sql);
//객체생성 후 미완성 SQL 구문 ? 값 넣기
//테이블 컬럼에 맞는 형(물음표 순서, 이름)
pstmt.setInt(1, num); 
pstmt.setString(2, name);
//PreparedStatement : SQL 구문을 만들고 실행 할 수 있는 자바 내장 객체. 선처리 방식으로 미리 컴파일된 SQL문을 가지고 있다가 동적으로 컬럼값을 채워 질의문을 수행할 수 있어 효율적인 SQL문을 구사

//4) SQL 구문 실행(insert, update, delete) → 결과 저장(select)
pstmt.executeUpdate();

//5) 결과를 이용하여 출력, 이동(select)
%>
학생등록성공 : <%=pstmt %>
</body>
</html>