<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 메서드</title>
</head>
<body>
<table border="1" style="width: auto;">
	<tr>
		<td>메서드</td>
		<td>설명</td>
		<td>실행</td>
	</tr>
	<tr>
		<td>getServerName()</td>	
		<td>서버이름(서버 도메인)</td>	
		<td><%=request.getServerName() %></td>
	</tr>		
	<tr>
		<td>getServerPort()</td>	
		<td>서버포트번호</td>	
		<td><%=request.getServerPort() %></td>
	</tr>		
	<tr>
		<td>getRequestURL()</td>	
		<td>요청한 주소(URL)</td>	
		<td><%=request.getRequestURL() %></td>
	</tr>		
	<tr>
		<td>getRequestURI()</td>	
		<td>서버주소를 뺀 주소(URI)</td>	
		<td><%=request.getRequestURI() %></td>
	</tr>		
	<tr>
		<td>getRemoteAddr()</td>	
		<td>클라이언트(유저) IP 주소</td>	
		<td><%=request.getRemoteAddr() %></td>
	</tr>		
	<tr>
		<td>getProtocol()</td>	
		<td>프로토콜</td>	
		<td><%=request.getProtocol() %></td>
	</tr>		
	<tr>
		<td>getMethod()</td>	
		<td>요청방식</td>	
		<td><%=request.getMethod() %></td>
	</tr>		
	<tr>
		<td>getContextPath()</td>	
		<td>컨텍스트(프로젝트) 경로</td>	
		<td><%=request.getContextPath() %></td>
	</tr>		
	<tr>
		<td>getRealPath("/")</td>	
		<td>파일 업로드 시 업로드 한 경로(물리적인 경로)</td>	
		<td><%=request.getRealPath("/") %></td>
	</tr>		
	<tr>
		<td>request.getHeader("accept-language")</td>	
		<td>http 헤더정보(언어)</td>	
		<td><%=request.getHeader("accept-language")%></td>
	</tr>		
	<tr>
		<td>request.getHeader("user-agent")</td>	
		<td>http 헤더정보(브라우저)</td>	
		<td><%=request.getHeader("user-agent") %></td>
	</tr>		
</table>
</body>
</html>