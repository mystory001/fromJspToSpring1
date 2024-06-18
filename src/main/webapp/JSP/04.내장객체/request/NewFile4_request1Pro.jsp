<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*
사용자가 입력한 내용을 http가 요청정보를 들고 서버에 전달
→ 서버에 request, response 기억장소를 만들고, request에 http가 들고 온 요청 정보를 저장
→ post 방식으로 데이터를 가져오면 request 한글 설정
→ request에서 파라미터(태그) 값을 가져와서 변수에 저장
→ 화면에 출력
*/

request.setCharacterEncoding("utf-8"); //request 한글 설정

//request 파라미터값 id, pw, name,... 값을 가져와서 변수 저장
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String age = request.getParameter("age");
int ageInt = Integer.parseInt(age);
String gender = request.getParameter("gender");
String hobby[] = request.getParameterValues("hobby");
String grade = request.getParameter("grade");
String intro = request.getParameter("intro");
%>

입력한 정보<br>
이름 : <%=name %><br>
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
나이(문자) : <%=age %>, 나이(숫자) : <%=ageInt %><br>
성별 : <%=gender %><br>
<%-- 취미 : <%=hobby %><br> --%>
<%-- 취미 : <%=hobby[0] %><%=hobby[1] %><%=hobby[2] %><br> --%>
<%-- 취미개수 : <%=hobby.length %><br> --%>
취미 : <%if(hobby!=null){ 
for(int i = 0; i<hobby.length; i++){ %>
<%=hobby[i] %>
<%} }%><br>
<!-- 배열이 들어가면 for와 함께 사용됨! -->
등급 : <%=grade %><br>
자기소개 : <%=intro %><br>
</body>
</html>