<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ include file="Database.jsp"%>
<%
	IuserDao userdao = new UserImpl();
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	try {
		boolean a = userdao.selectUserBoolean(name, password);
		if (a) {
	session.setAttribute("user", name);
	out.write("成功");
		} else {
	out.write("您的用户名或密码错误！");
		}
	} catch (Exception e) {
		out.write("失败");
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}
%>