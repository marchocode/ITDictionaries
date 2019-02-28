<%@page import="com.itimpl.MessageImpl"%>
<%@page import="com.itdao.IMessageZcDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String num1 = request.getParameter("num");
	
	int num = Integer.parseInt(num1);
	
	String number = request.getParameter("number");

	IMessageZcDao message = new MessageImpl();
	
		message.message(number, num);
%>