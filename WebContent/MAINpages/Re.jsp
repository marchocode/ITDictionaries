<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.entity.User"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	IuserDao userdao = new UserImpl();

	request.setCharacterEncoding("utf-8");
	
String user = request.getParameter("user");

String pw = request.getParameter("pw");

String phone = request.getParameter("phone");


try {
	userdao.addUser(new User(user,pw,phone));
	session.setAttribute("user", user);
MysqlLianJie.sql();
MysqlLianJie.sta.executeUpdate("insert into knowledgeifo (username,knowledgeIntegral) values('"+user+"',0)");
	out.write("注册成功");

} catch (Exception e) {
	out.write("注册失败");
}
finally{
	
// 	MysqlLianJie.sqlreClose();
}
%>