<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.entity.Cooment"%>
<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String id1 = request.getParameter("id");
int id = Integer.parseInt(id1);
Object username1 = session.getAttribute("user");
String username = username1.toString();
String text = request.getParameter("text");
JSONObject json = new JSONObject();
IXiaoxiIfo xiao = new UploadxiaoImpl();
IuserDao userdao = new UserImpl();
try {
	
	xiao.addComment(new Cooment(id,username,text));
String img = userdao.getUserImg(username);
	json.put("img", img);
	json.put("username", username);
	json.put("text", text);
	out.print(json);
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}




%>