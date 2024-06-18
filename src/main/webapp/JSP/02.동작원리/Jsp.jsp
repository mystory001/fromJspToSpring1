<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewFile2.jsp</title>
</head>
<body>
<h1>*웹 서버의 동작 원리</h1>
<p>
-html<br>
사용자(유저, 클라이언트)가 브라우저에 URL을 입력(ex : http://localhost:8080/project/html/index.html) => localhost:8080 서버에 index.html 페이지를 요청<br>
→ 웹 서버 전달<br>
→ 웹 서버 안 index.html 페이지 찾기<br>
→ 찾은 페이지를 사용자에게 전달(응답)<br>
즉, 사용자가 요청하면 서버가 찾아서 사용자에게 응답하는 방식
</p>
<p>-jsp<br>
사용자(유저, 클라이언트)가 브라우저에 URL 입력(ex : http://localhosy:8080/project/form.jsp) => localhost:8080 서버에 form.jsp 페이지를 요청<br>
→ 웹 서버(아파치) 전달<br>
→ 웹 서버 안에 form.jsp 페이지 찾기<br>
→ .jsp는 서버를 통해서만 실행되기 때문에 jsp 처리작업이 필요<br>
→ 웹 애플리케이션 서버(WAS, 톰캣, 웹 컨테이너)에 전달<br>
→ java, jsp 명령을 처리하고 결과를 html로 변경하는 작업(응답 정보)<br>
→ 응답 정보를 웹 서버에 전달<br>
→ 응답 정보를 사용자에게 전달
</p>
<p>
사용자(유저, 클라이언트)가 브라우저에 URL 입력(ex : http://localhosy:8080/project/form.jsp)<br>
→ http가 요청 정보를 가지고 localhost:8080 서버를 찾아감. localhost:8080 서버에 form.jsp 페이지를 요청<br>
→ 웹 서버(아파치) 전달<br>
→ 웹 서버 안에 form.jsp 페이지 찾기<br>
→ jsp 처리 작업을 위해 웹 애플리케이션 서버에 전달<br>
→ request(http가 들고 온 요청 정보를 저장), response(서버의 처리 결과 응답 정보를 저장), 기억 장소를 만듦<br>
→ web.xml 참조(설정 정보 확인)<br>
→ servlet(명령 처리 담당) 기억 장소 만듦<br>
→ java, jsp 명령을 처리하고 결과를 html로 변경(응답 정보를 response에 저장)<br>
→ 응답 정보를 웹 서버에 전달<br>
→ 응답 정보를 http에 전달<br>
→ 응답 정보를 사용자에게 전달<br>
</p>
<p>
*jsp 특징<br>
-강력한 이식성 : 자바 기반의 언어, 어떠한 운영체제와 상관없이 동작<br>
-서버 자원의 효율적인 사용<br>
-간편한 MVC 패턴 적용<br>
-JSTL, 커스텀 태그 등을 이용한 개발 용이성<br>
-서블릿과 비교되는 장정<br>
</p>
<p>
*HTTP 프로토콜<br>
-HTTP(Hyper Text Transfer Protocol) : html을 요청하고 응답하는 통신 규약(통신 규칙)<br>
-HTTP 요청 메시지(주소줄, 헤더, 본문) → 웹 서버 → HTTP 응답 메시지(주소줄, 헤더, 본문)<br>
</p>
</body>
</html>