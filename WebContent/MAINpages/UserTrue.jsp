<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String username = request.getParameter("user");
IuserDao userdao = new UserImpl();
try {
	boolean a = userdao.selectUserBoolean(username);
	if (a) {
out.write("成功");
	} else {
out.write("！");
	}
} catch (Exception e) {
	out.write("失败");
}
finally{
	
// 	MysqlLianJie.sqlreClose();
}

%>