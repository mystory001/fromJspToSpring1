<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<%
/*
회원가입 테이블 members
id(pk), pw, name, data

create table members(
	    -> id varchar(20),
	    -> pw varchar(20),
	    -> name varchar(20),
	    -> date timestamp,
	    -> primary key(id));
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
| pw    | varchar(20) | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| date  | timestamp   | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
*/
%>
<h1>회원가입</h1>
<form action="insertPro.jsp" method="post">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="pw"><br>
이름 : <input type="text" name="name"><br>
<input type="submit" value="회원가입">
</form>

</body>
</html>