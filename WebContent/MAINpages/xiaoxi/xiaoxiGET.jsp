
<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
IXiaoxiIfo xiao = new UploadxiaoImpl();
try {
	
	out.print(xiao.getXiaoXi());
	
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}
%>