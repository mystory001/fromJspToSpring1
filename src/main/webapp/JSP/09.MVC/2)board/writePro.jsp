<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writePro</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

BoardDAO boardDAO = new BoardDAO();
System.out.println("boardDAO 주소 : " + boardDAO);

int num = boardDAO.getMaxNum()+1;
int readCount = 0; //조회수 시작
Timestamp date = new Timestamp(System.currentTimeMillis()); //시스템 현 날짜 -> 날짜(date)

//boardDTO 객체생성(메모리 할당)
BoardDTO boardDTO = new BoardDTO();
System.out.println("boardDTO 주소 : " + boardDTO);

//set() 호출(멤버 변수 기억장소에 파라미터값 저장)
boardDTO.setName(name);
boardDTO.setSubject(subject);
boardDTO.setContent(content);
boardDTO.setNum(num);
boardDTO.setReadCount(readCount);
boardDTO.setDate(date);

boardDAO.insertBoard(boardDTO);
response.sendRedirect("list.jsp");
%>

</body>
</html>