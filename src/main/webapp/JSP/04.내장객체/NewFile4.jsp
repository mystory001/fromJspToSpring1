<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
<!--
*내장 객체 
jsp페이지에서 사용할 수 있도록 jsp컨테이너에 미리 정의된 객체
import 없이 자유롭게 사용 가능하며, 객체 생성없이 직접 호출하여 사용할 수 있음.
request, response, session, pageContext, out, application, config, page, exception 등

-request
클라이언트의 HTTP 요청 정보를 저장하는 객체(Http 헤더정보, 파라미터(태그) 등)
웹 애플리케이션 서버(WAS)에 자동으로 HttpServletRequest 객체생성
HttpServletRequest request = new HttpServletRequest();

-response
Http 요청에 대한 응답 정보를 저장한 객체

-session
클라이언트의 세션 정보(연결정보)를 저장한 객체

-pageContext
페이지 실해에 필요한 컨텍스트 정보(프로젝트 한 페이지 정보)를 저장한 객체

-out
응답 페이지 전송을 위한 출력 스트림(출력정보) 객체

-application
동일한 애플리케이션의 컨텍스트 정보(서버 정보)를 저장한 객체

-config
해당 페이지의 서블릿 설정 정보(초기화 정보)를 저장한 객체

-page
해당 페이지 서블릿 객체(인스턴스)

-exception
예외 처리를 위한 객체
-->
</body>
</html>