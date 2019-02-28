<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.SouImpl"%>
<%@page import="com.itdao.ISouDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String zhi = request.getParameter("zhi");
ISouDao sou = new SouImpl();
try {
	
	out.print(sou.getJg(zhi));
	
	} catch (Exception e) {
		System.out.print(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlClose();
	}


%>