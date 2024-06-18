<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response</title>
</head>
<body>
<!-- 
기억장소할당 → HTTP 요청에 대한 응답 정보를 저장하는 객체 → 응답정보를 저장하면 웹 서버 전달
→ HTTP에 전달 → 사용자 브라우저에 전달

response.setHeader("헤더이름",헤더값) 사용자 헤더값 변경
response.addCookie(쿠키값) 쿠키값을 사용자 컴퓨터에 파일로 저장
response.setContentType("text/html; charset=UTF-8") : 보는 페이지의 내용 타입을 변경
response.sendRedirect("주소 또는 파일이름") : 사용자 페이지를 다른 곳으로 이동 설정(주소 변경(하이퍼링크))
-->
<table border="1" style="width: auto;">
	<tr>
		<td>메서드</td>
		<td>설명</td>
		<td>실행</td>
	</tr>
	<tr>
		<td>setHeader("헤더이름", 헤더값)</td>	
		<td>사용자 헤더값 변경</td>	
		<td></td>
	</tr>		
	<tr>
		<td>addCookie(쿠키값)</td>	
		<td>쿠키값을 사용자 컴퓨터에 파일로 저장</td>	
		<td></td>
	</tr>		
	<tr>
		<td>setContentType()</td>	
		<td>보는 페이지의 내용 타입 변경</td>	
		<td></td>
	</tr>
	<tr>
		<td>sendRedirect("주소 또는 파일이름")</td>	
		<td>보는 페이지의 내용 타입 변경</td>	
		<td><a href="sendRedirect.jsp">하이퍼링크</a></td>
	</tr>
</table>		
</body>
</html>