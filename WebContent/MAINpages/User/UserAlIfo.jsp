<%@page import="com.entity.User"%>
<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

Object ob = session.getAttribute("user");
String username = ob.toString();
String password = request.getParameter("pw");
String age1 = request.getParameter("age");
int age = Integer.parseInt(age1);
String sex = request.getParameter("sex");
String city =  request.getParameter("city");
String city1 =  request.getParameter("city1");
String email =  request.getParameter("email");
String gxqm =  request.getParameter("gxqm");
IuserDao userdao = new UserImpl();
try {
	userdao.updateUser(new User(username,password,email,age,sex,gxqm,city+city1));
	} catch (Exception e) {
		System.out.print(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlClose();
	}

%>