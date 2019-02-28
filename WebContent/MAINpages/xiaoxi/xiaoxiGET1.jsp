
<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object u = session.getAttribute("user");
String username = u.toString();
IXiaoxiIfo xiao = new UploadxiaoImpl();
try {
	
	out.print(xiao.getXiaoXiU(username));
	
	} catch (Exception e) {
		System.out.print(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}
%>