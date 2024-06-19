<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
<!-- 
session 
HTTP 프로토콜은 요청/응답 구조로 되어 있어 서버가 요청에 대한 응답을 전송하고 나면 연결이 끊어지게 됨
따라서 클라이언트의 정보가 유지되어야 할 필요가 있는 경우를 위해 가상 연결이라는 개념의 '세션'이 등장

클라이언트의 세션 정보(연결정보)를 저장한 객체 → 연결이 되어 있으면 페이지 상관없이 값이 유지

세션 기억장소가 삭제되는 경우
1) 사용자가 사용하는 브라우저를 모두 닫았을 경우 → 사용자 세션ID를 잃어버림
2) 사용자가 서버 접근을 세션 유지 시간을 넘겼을 경우
3) 사용자가 로그아웃한 경우 → 세션 기억 장소 삭제
-->

세션 ID : <%=session.getId() %><br> <!-- 기억장소가 새로 만들어지지 않는 이상 유지 -->
세션 만든 시간 : <%=session.getCreationTime() %><br> <!-- 유지 -->
세션 마지막 접근 시간 : <%=session.getLastAccessedTime() %><br> <!-- 시간이 지남에 따라 변동, 마지막 로그인한 시간을 확인할 수 있음 -->
세션 유지 시간 : <%=session.getMaxInactiveInterval() %>초<br>
<%
session.setMaxInactiveInterval(7200); //세션 유지시간 변경
%>
변경한 세션 유지 시간 : <%=session.getMaxInactiveInterval() %><br>
<%
//세션 영역에 속성을 생성(저장)
session.setAttribute("sessionName", "sessionValue");

//로그아웃(세션기억장소 전체 삭제 명령)
// session.invalidate();
%>
세션 값 가져오기 : <%=session.getAttribute("sessionName") %>
</body>
</html>