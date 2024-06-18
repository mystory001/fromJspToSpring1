<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체</title>
</head>
<body>
<!-- 
getParameter() : 파라미터값을 리턴, 없으면 null을 리턴
getParameterValues() : 파라미터의 모든 값을 배열로 리턴, checkbox 여러 개 선택하는 태그에 주로 사용
getHeader() : 클라이언트의 페이지 접근 정보값이 저장
getSeesion() : 세선 정보
getServerName() : 서버 도메인명
getServerPort() : 서버 포트번호
getRequestURL() : 주소 전체
getRequest URI() : 호스트, 포트를 뺀 주소
getRemoteHost() : 클라이언트 호스트명
getRemoteAddr() : 클라이언트 IP주소
getProtocol() : 프로토콜
getMethod() : 전송 방식(get, post)
getCookies()
getContextPath() : 프로젝트 경로
getRealPath("/") : 실제 컴퓨터에 저장 경로
-->
<%
request.setCharacterEncoding("uft-8"); //form태그 method가 post일 때 설정

String nickname = request.getParameter("nick");
String age = request.getParameter("age");
int ageInt = Integer.parseInt(age);
%>

닉네임 : <%=nickname %><br>
나이(String) : <%=age %><br>
나이(Int) : <%=ageInt %><br>
<br>
age+100 = <%=age+100 %> (문자+문자 => 연결)<br>
ageInt+100 = <%=ageInt + 100%> (숫자 + 숫자 => 덧셈)<br>

</body>
</html>