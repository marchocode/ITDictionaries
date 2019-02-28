
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<%@ include  file="../Database.jsp"  %>


<sql:query var="rs" dataSource="${ds }">

select * from information where zixuncategory = ?; 

<sql:param>最新资讯</sql:param>

</sql:query>

<c:forEach items="${rs.rows}"  var="zhi">



<c:out value="${zhi.zizunimg }"></c:out>
<c:out value="${zhi.zixuntitle }"></c:out>
<c:out value="${zhi.zixunbody }"></c:out>

</c:forEach>