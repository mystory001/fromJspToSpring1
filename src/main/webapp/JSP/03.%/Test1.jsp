<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP/NewFileTest01.jsp</title>
</head>
<body>
<%
int hour = 03;
int min = 48;
int sec = 30;
%>
<h1>현재 시간은 <%=hour %>시 <%=min %>분 <%=sec %>초 입니다.</h1>
<h2>========================================</h2>
Q) hour가 13이상 오후 1시, 23시면 오후 11시로 표시되게 출력<br>
현재 시간 : <%=hour %><br>
<%
if(hour>=13 && hour <=23){
	out.print("오후 "+ (hour-12)+"시");
} else{
	out.print("오전 " + (hour)+"시");
}
%>
</body>
</html>