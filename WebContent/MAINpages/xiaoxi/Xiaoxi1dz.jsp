<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.UploadxiaoImpl"%>
<%@page import="com.itdao.IXiaoxiIfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id1 = request.getParameter("id");
Object ob = session.getAttribute("user");
String name = ob.toString();
int id = Integer.parseInt(id1);
 IXiaoxiIfo xiao = new UploadxiaoImpl();
 
try {
boolean bl = xiao.goodIfoT(id, name);
if(bl){
	xiao.alterGood(-1, id);	
	xiao.deleteGoodifoU(id, name);
	out.println(xiao.getGoodifo(id));
}else{
	xiao.alterGood(1, id);
	xiao.addGoodifoU(id, name);
	out.println(xiao.getGoodifo(id));
}
	
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlClose();
	}


%>