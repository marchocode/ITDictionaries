<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object user =  session.getAttribute("user");
String username = user.toString();
String id1 = request.getParameter("id");
int id = Integer.parseInt(id1);
IXiaoxiIfo xiao = new UploadxiaoImpl();
try {
	
	xiao.addFx(id, username);
	 
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}


%>