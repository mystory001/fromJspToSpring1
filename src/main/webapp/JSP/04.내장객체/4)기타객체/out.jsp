<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
</head>
<body>
<!-- 
out
응답 페이지를 전송하기 위한 출력 스프림(출력 정보 저장) 객체 
-->
<%
out.println("출력정보저장<br>");
%>
출력 버퍼 크기 : <%=out.getBufferSize() %>byte<br>
출력 버퍼 남은 크기 : <%=out.getRemaining() %>byte<br>
<%
out.close(); //출력 종료
out.println("종료 후 출력<br>");
%>
</body>
</html>