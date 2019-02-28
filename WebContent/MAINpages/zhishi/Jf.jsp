<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.zhishiImpl"%>
<%@page import="com.itdao.IzhishiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object user =  session.getAttribute("user");
String username = user.toString();
String jf1 = request.getParameter("jf");
int jf = Integer.parseInt(jf1);
IzhishiDao zhishi = new zhishiImpl();
try {
	
int zjf = zhishi.jf(username);
MysqlLianJie.sqlreClose();
zhishi.jf((zjf+jf), username);
	
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlClose();
	}



%>