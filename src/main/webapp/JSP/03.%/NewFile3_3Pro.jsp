<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>%% Pro</title>
</head>
<body>
<%
/*
스크립틀릿(Scriptlet)
jsp에서 name="값"이 서버에 전달 → 서버 request, response라는 기억장소가 생성
→ request에 각각 이름에 해당하는 값 요청 정보가 저장
→ request에서 이름에 해당하는 값을 가져와서 String 변수에 저장
→ 변수를 출력(표현식)
*/

String name = request.getParameter("name");
String num = request.getParameter("num");
%>
이름 : <%=name %><br>
숫자 : <%=num %><br>
</body>
</html>