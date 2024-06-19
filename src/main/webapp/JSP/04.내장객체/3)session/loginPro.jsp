<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPro</title>
</head>
<body>
<h1>loginPro.jsp</h1>
<%
/*
사용자가 입력한 id, pw값을 http가 loginPro.jsp를 요청하여 서버에 전달
→ 서버가 정보를 전달 받아 request, response 기억 장소 생성
→ request에 id, pw 파라미터값을 저장
→ 가져온 정보를 변수에 저장
*/
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
폼에서 입력한 아이디 : <%=id %>
폼에서 입력한 비밀번호 : <%=pw %>
<%
//DB와 연동하지 않았기 때문에 임의의 ID, PW
String dbId = "admin";
String dbPw = "1234";
%>
DB 아이디 : <%=dbId %>
DB 비밀번호 : <%=dbPw %>
<%
/*
폼에서 입력한 아이디, 비밀번호와 db 아이디, 비밀번호 비교
아이디, 비밀번호가 모두 일치하면 "로그인 성공", 
아이디, 비밀번호가 하나라도 일치하지 않으면 "로그인 실패"
※문자열 비교 시 equals() 메소드 사용
*/

if(id.equals(dbId) && pw.equals(dbPw)){
	out.println("로그인 성공");
	//로그인 표시 설정(서버-클라이언트 연결되어 있는 동안 페이지 상관없이 값을 유지)
	session.setAttribute("id", id); 
	//세션에 로그인 표시 저장("세션에 로그인 표시 이름", 값)
	//id값은 고유하고, id 기준으로 다른 정보를 가져올 수 있기 때문에 id로 하는 것이 바람직함. pw는 동일한 사용자가 있을 수 있음
	response.sendRedirect("loginMain.jsp");
} else{
	out.println("로그인 실패");
	response.sendRedirect("login.jsp");
}

%>
</body>
</html>