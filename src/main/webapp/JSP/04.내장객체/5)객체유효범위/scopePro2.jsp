<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scopePro2</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
<!-- <a href="scopePro2.jsp">scopePro2.jsp → 아이디,비밀번호 값은 유지X ∴프로젝트 시 "id="+id+"&pw="+pw 사용해야하는 이유였음 -->

<!-- 내장객체 값 가져오기 -->
request값 : <%=request.getAttribute("request") %><br>
session값 : <%=session.getAttribute("session") %><br>
application값 : <%=application.getAttribute("application") %><br>
pageContext값 : <%=pageContext.getAttribute("pageContext") %><br>
<!-- 결과 : 페이지가 변경되면 session값과 pageContext값만 유지됨 -->


</body>
</html>