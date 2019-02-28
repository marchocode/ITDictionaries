<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object ob = session.getAttribute("user");
String username = ob.toString();
IuserDao userdao = new UserImpl();
try {
	
	out.print(userdao.selectUser(username));
	
	} catch (Exception e) {
		System.out.print(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}


%>