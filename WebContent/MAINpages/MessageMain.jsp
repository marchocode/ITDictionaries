<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.PrintWriter"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Database.jsp"%>


<sql:update dataSource="${ds}" >
	insert into message(name,content) values('${param.Name}','${param.text}');
</sql:update>
<%
	PrintWriter pw=response.getWriter();
	response.setContentType("html/text");
	pw.write("成功");
	pw.close();

%>