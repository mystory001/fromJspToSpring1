<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그</title>
</head>
<body>
jsp 문법으로 태그처럼 사용하도록 만든 문법, %밖에서 사용
ex) <%-- <jsp:include />, <jsp:forwar /> --%>

jsp:forword : 페이지(주소줄) 변경없이 request 값을 가지고 이동 <%-- <jsp:forward page="" /> --%>
jsp:include : 반복되는 코드를 따로 jsp로 빼고 사용 <%-- <jsp:include page="" /> --%>
</body>
</html>