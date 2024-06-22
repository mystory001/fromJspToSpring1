<%@page import="member.MemberDTO"%>
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

MemberDAO memberDAO = new MemberDAO();
System.out.println("memberDAO 메모리 주소 : " + memberDAO);
boolean result = memberDAO.userCheck(id, pw);

if(result == true){
	out.println("정보 일치");
	MemberDTO memberDTO = new MemberDTO();
	//수정할 데이터 파라미터 값을 MemberDTO의 set메서드를 호출해서 저장
	memberDTO.setId(id);
	memberDTO.setPw(pw);
	memberDTO.setName(name);
	memberDAO.updateMember(memberDTO);

	response.sendRedirect("main.jsp");
} else {
	out.println("정보 불일치");
	response.sendRedirect("update.jsp");
}
%>
</body>
</html>