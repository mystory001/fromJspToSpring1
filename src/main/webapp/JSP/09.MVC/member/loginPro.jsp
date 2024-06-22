<%@page import="member.MemberDAO"%>
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

MemberDAO memberDAO = new MemberDAO();
boolean result = memberDAO.userCheck(id, pw);

if(result==true){
	out.println("로그인 성공<br>");
	session.setAttribute("id", id); //세션에 로그인 표시 저장
	response.sendRedirect("main.jsp");
}else{
	out.println("로그인 실패<br>");
	response.sendRedirect("login.jsp");
}
%>


</body>
</html>