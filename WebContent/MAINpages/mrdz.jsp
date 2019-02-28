<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@page import="com.tool.MysqlLianJie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

Object user =  session.getAttribute("user");
	
 IuserDao userifo = new UserImpl();
 
 try {
		
	int dz =  userifo.returnNum(user.toString());
	
	out.print(dz);
	 
	} catch (Exception e) {
		out.write("失败");
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}
 
 
 
	
%>