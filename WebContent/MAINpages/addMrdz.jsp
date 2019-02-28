<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@page import="com.tool.MysqlLianJie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String id = request.getParameter("dzx");
Object un = session.getAttribute("user");
String username = un.toString();
IuserDao user = new UserImpl();
int id1 = Integer.parseInt(id);

	try {
		
		
		user.updateCeleGood(id1);
		
		user.updateNum(username, id1);
		
		out.print("点赞成功");
		 
		} catch (Exception e) {
			out.write(e.getMessage());
		}
		finally{
			
			MysqlLianJie.sqlreClose();
		}
	
%>