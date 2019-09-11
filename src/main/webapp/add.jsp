<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.itcen.guestbook.dao.GuestbookDao" %>
<%@ page import="kr.co.itcen.guestbook.vo.GuestbookVo" %>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestbookVo guesetVo = new GuestbookVo();
	guesetVo.setName(name);
	guesetVo.setPassword(password);
	guesetVo.setContents(contents);
	
	new GuestbookDao().insert(guesetVo);
	
	response.sendRedirect(request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>방명록이 성공적으로 등록되었습니다.</h1>
</body>
</html>