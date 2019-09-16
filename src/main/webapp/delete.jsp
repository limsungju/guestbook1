<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.itcen.guestbook.dao.GuestbookDao" %>
<%@ page import="kr.co.itcen.guestbook.vo.GuestbookVo" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookVo guestVo = new GuestbookVo();
	guestVo.setNo(Long.parseLong(no));
	guestVo.setPassword(password);
	
	new GuestbookDao().delete(guestVo);
	
	response.sendRedirect(request.getContextPath());
	
%>