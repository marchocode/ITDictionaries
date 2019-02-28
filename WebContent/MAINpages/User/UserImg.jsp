<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String username = request.getParameter("username");
String nei = request.getParameter("nei");
String id = request.getParameter("id");
IuserDao user = new UserImpl();
JSONObject jsonObject = new JSONObject();
try {
	jsonObject.put("img",user.getUserImg(username));
	jsonObject.put("nei",nei);
	jsonObject.put("username",username);
	jsonObject.put("id",id);
	out.print(jsonObject);
	
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}

%>