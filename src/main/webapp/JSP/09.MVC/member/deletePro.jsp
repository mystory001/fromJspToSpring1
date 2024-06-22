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
<title>deletePro</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

MemberDAO memberDAO = new MemberDAO();
System.out.println("memberDAO 메모리 주소 : " + memberDAO);

boolean result = memberDAO.userCheck(id, pw);

if(result==true){
	out.println("정보 일치");
	memberDAO.deleteMember(id);
	session.invalidate();
	response.sendRedirect("insert.jsp");
} else {
	out.println("정보 불일치");
	response.sendRedirect("delete.jsp");
}
%>
</body>
</html>