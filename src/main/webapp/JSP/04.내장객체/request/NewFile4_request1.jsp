<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>회원가입 양식</h1>
<form action="NewFile4_request1Pro.jsp" method="post">
이름 : <input type="text" name="name"><br>
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="pw"><br>
나이 : <input type="text" name="age"><br>
성별 : <input type="radio" name="gender" value="남">남 <input type="radio" name="gender" value="여">여<br>
취미 : <input type="checkbox" name="hobby" value="취미1">취미1 <input type="checkbox" name="hobby" value="취미2">취미2 <input type="checkbox" name="hobby" value="취미3">취미3<br>
등급 : <select name="grade">
<option value="0">등급을 선택해주세요</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select><br>
자기소개 :<br> <textarea name="intro" rows="10" cols="20" placeholder="간단한 자기소개"></textarea>
<input type="submit" value="회원가입">
</form>
</body>
</html>