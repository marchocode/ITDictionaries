
<%@page import="com.entity.User"%>
<%@page import="com.itimpl.UserImpl"%>
<%@page import="com.itdao.IuserDao"%>
<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.entity.News"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

Object user =  session.getAttribute("user");
String username = user.toString();
Date date = new Date();
SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd-HH-mm-ss");
String as = format.format(date).toString();
ServletInputStream sin = request.getInputStream();
byte[] buffer = new byte[1024 * 8];
int length = 0, row = 0;
String mark = "";
String filename = "";
while ((length = sin.readLine(buffer, 0, buffer.length)) > 0) {
	out.println(length + "    " + new String(buffer, 0, length, "UTF-8") + "<br>");
	String s = new String(buffer, 0, length, "UTF-8");
	if (row == 0)
		mark = s.trim();
	else if (s.indexOf("filename=") > 0) {
		int end = s.lastIndexOf("\"");
		int start = s.substring(0, end).lastIndexOf("\"");
		filename = s.substring(start + 1, end);
	} else if ("".equals(s.trim()))
		break;
	row ++;
}

out.println("filename:    " + filename + "<br>");
String pathName = as+filename;
filename = request.getRealPath("/") + "../"+"images/touxiang/" + as+filename;
FileOutputStream fout = new FileOutputStream(filename);
while ((length = sin.readLine(buffer, 0, buffer.length)) > 0) {
	String s = new String(buffer, 0, length);
	if (s.startsWith(mark))
		break;
	fout.write(buffer, 0, length);
}
fout.flush();
fout.close();
File f = new File(filename);
IuserDao userdao = new UserImpl();
try {
   userdao.addUserImg(new User(username,pathName));
	} catch (Exception e) {
		System.out.print(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlClose();
	}

response.sendRedirect("../../pages/html/geren.html");

%>