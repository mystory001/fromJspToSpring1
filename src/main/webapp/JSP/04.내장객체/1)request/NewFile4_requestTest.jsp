<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="NewFile4_request.jsp" method="post">
닉네임 : <input type="text" name="nick"><br>
나이 : <input type="text" name = "age"><br>
<input type="submit" value="전송"><br>

<%
/*
form 태그의 속성 method가 get일 때는 문자가 깨지지 않지만, post로 설정했을 때는 문자가 깨짐
request 한글 처리 설정이 필요함
=> request.setCharacterEncoding("uft-8");
*/
%>

</form>
</body>
</html>