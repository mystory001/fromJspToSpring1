<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*
사용자가 입력한 정보를 서버에 전달되면 서버 request 기억 장소가 할당
→ request 기억 장소에 사용자가 입력한 요청 정보 저장
→ request 기억 장소에 nick="값" age="값" 저장된 값을 가져와서 String 변수에 저장 → 변수를 출력
※request는 전부 String형임.
*/
String nick = request.getParameter("nick");
String age = request.getParameter("age");
%>
닉네임 : <%=nick %><br>
나이 : <%=age %>
</body>
</html>