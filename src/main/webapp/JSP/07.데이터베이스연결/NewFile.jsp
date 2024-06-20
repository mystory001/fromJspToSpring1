<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연결</title>
</head>
<body>
<%
/*
DBMS MySQL 이용
명령 프롬프트 실행 → mysql -u root -p 비밀번호 → 접속(mysql>)

데이터베이스 연결
1) 데이터베이스 만들기 프로젝트 전체 공간(영역 만들기) → DB 설계
2) 데이터베이스 관리할 사용자(관리자는 root, 사용자는 생성해서 사용)
3) 테이블 만들기(프로젝트 전체 공간 안에 주제별로 저장할 공간)

create database jspdb1; //데이터베이스 만들기
show databases; //데이터베이스 목록 확인
use jspdb1; //데이터베이스 선택(Database changed)
show tables; //테이블 목록
create table student(num int primary key, name varchar(10)); //student 테이블 만들기
desc student; //테이블 구조 확인
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| num   | int(11)     | NO   | PRI | NULL    |       |
| name  | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
insert into student values(1,'홍길동'); //학생정보저장
select * from student; //학생 테이블 조회
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| num   | int(11)     | NO   | PRI | NULL    |       |
| name  | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
update student set name='Thomas' where num=1; //num=1인 이름을 수정
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| num   | int(11)     | NO   | PRI | NULL    |       |
| name  | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
delete from student; //student 테이블 삭제
select * from student;
*/
//JDBC(Java Database Connectivity) : Java를 이용하여 DBMS에 접속해 SQL 명령을 전달하여 실행하기 위한 기능의 클래스 또는 인터페이스
//1) JDBC 프로그램 중 Drivier.class(자바실행파일) 파일 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");
//2) 불러온 파일을 이용해서 데이터베이스 연결(데이터베이스 주소, DB접속 ID, DB 접속 PW) → 연결 정보를 저장
String dbUrl = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul"; //데이터베이스 주소 MySQL, Oracle,.. DBMS마다 주소가 정해져있음
String dbUser = "root"; //데이터베이스 서버에 접속할 ID
String dbPw = "1234"; //데이터베이스 서버에 접속할 PW. 보안상 좋지 않음
Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
//Connection : 자바와 데이터베이스 연결 정보를 저장
//.getConnection() → 리턴값 Connection객체
%>
</body>
</html>