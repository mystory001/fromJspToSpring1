<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scopePro1</title>
</head>
<body>
<%
//사용자가 입력한 요청 정보를 서버에 전달하면 request 내장 객체에 저장
String id = request.getParameter("id");
String pw = request.getParameter("pw");
//내장객체 값 저장
request.setAttribute("request", "requestValue");
session.setAttribute("session", "sessionValue");
application.setAttribute("application", "applicationValue");
pageContext.setAttribute("page", "pageContextValue");
%>
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
<!-- 내장객체 값 가져오기 -->
request값 : <%=request.getAttribute("request") %><br>
session값 : <%=session.getAttribute("session") %><br>
application값 : <%=application.getAttribute("application") %><br>
pageContext값 : <%=pageContext.getAttribute("page") %><br>

<a href="scopePro2.jsp">scopePro2.jsp</a><br>
<a href="scopePro2.jsp?id=<%=id %>&pw=<%=pw %>">get방식으로 데이터 요청하면서 scopePro2.jsp 이동하기</a>
<%
// response.sendRedirect("scopePro2.jsp?id="+id+"&pw="+pw);
%>
</body>
</html>