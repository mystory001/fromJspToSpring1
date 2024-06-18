<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><\%= %></title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
/*
*request객체 : http 요청 정보를 담고 있음
* 동작 순서
웹 브라우저가 http 메시지를 웹 서버에 보냄
→ 서버가 받은 http 요청이 서블릿, jsp요청일 때 해당 컨테이너는 http 메시지를 통해 HttpServletRequest객체를 생성하고 서블릿 인스턴스에 넘김
→ 서블릿이 요청 데이터를 얻음 → JSP 페이지는 HttpServletRequest객체를 request이름으로 사용
*객체 메서드
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
*/
%>
입력한 아이디 : <%=id %><br>
입력한 비밀번호 : <%=pw %><br>
</body>
</html>