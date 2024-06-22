<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
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

/*
※DTO(Data Transfer Object) : 객체 데이터를 담아두는 용기 파일 => 메서드를 제외한 객체
여러 개의 데이터를 용기에 담기 (main-java-member-MemberDTO.java)
멤버 변수 setter getter 메서드 정의
MemberDTO 객체 생성 → 메모리 할당
멤버변수에 request에 가져온 값을 set 메서드를 호출해서 저장

※DAO(Data Access Object) : DTO 그릇을 실제 데이터베이스에 가져와서 무엇을 할 지 고르는 파일 => 메서드 모음
MemberDAO 객체 생성 → 메모리 할당

*/

//MemberDAO 객체 생성 → 메모리 할당
MemberDAO memberDAO = new MemberDAO();
System.out.println("memberDAO의 주소 = " + memberDAO);

//insertMember() 메서드 호출
memberDAO.insertMember(id, pw, name, date);

//MemberDTO 객체 생성 → 메모리 할당
MemberDTO memberDTO = new MemberDTO();
//멤버변수에 request에 가져온 값을 set 메서드 호출해서 저장
memberDTO.setId(id);
memberDTO.setPw(pw);
memberDTO.setName(name);
memberDTO.setDate(date);

response.sendRedirect("login.jsp");
%>

</body>
</html>