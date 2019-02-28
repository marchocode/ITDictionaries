<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.entity.News"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String text = request.getParameter("text");
Object user =  session.getAttribute("user");
String username = user.toString();
IXiaoxiIfo xiao = new UploadxiaoImpl();
try {
	
	xiao.uploadXiaoT(new News(username,text));
	
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlClose();
	}
%>