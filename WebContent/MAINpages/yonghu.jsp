<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="Database.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>后台</title>
<link rel="stylesheet" type="text/css" href="css/houtai.css">
<link rel="stylesheet" type="text/css" href="font/iconfont.css">
<link rel="stylesheet" type="text/css" href="font1/iconfont.css">
<link rel="stylesheet" type="text/css" href="css/mrc_table.css">
<link rel="stylesheet" type="text/css" href="css/content.css">
<!-- <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"> -->
</head>
<body>
	<div class="da">

		<!-- 顶部条块 -->
		<div class="ding">
			<span>IT开心辞典后台管理系统</span>
		</div>


		<!-- 左div -->
		<div class="zuo">
			<!-- 左上div -->
			<div class="zuos">
				<img src="img/1.jpg" alt="">
			</div>

			<!-- 左下div -->
			<div class="zuox">

				
				<li style="background-color:#369BFF"><i
					class="iconfont icon-yonghu1" id="y">&nbsp;</i>用户信息查看</li>
				<li id="time"></li>

			</div>

		</div>



		<!-- 右div -->
		<div class="tab">
			<div class="title">
				<span class="zi">用户信息修改</span> <span class="zi weizhi">IT开心辞典后台管理系统>用户信息修改</span>
			</div>
			<div class="title tex">
				<table>
					<thead>
						<tr>
							<td class="id">用户名</td>
							<td class="nam">密码</td>
							<td class="sex">邮箱</td>
							<td class="year">年龄</td>
							<td class="clas">性别</td>
							<td class="qian">签名</td>
							<td class="city">城市</td>
							<td class="phone">手机号</td>
							<td class="iid">ID</td>
							<td class="images">图片地址</td>
							<td class="cao">操作</td>
						</tr>
					</thead>
				</table>
			</div>

			<sql:query var="zong" dataSource="${ds}"
				sql="select * from userifo">
			</sql:query>


			<c:set var="before" value="${param.befo==null? 1:param.befo}" />
			<!--当前页 -->

			<c:set var="content"
				value="25" />
			<!-- 页面大小 -->
			<c:set var="dataNum" value="${zong.rowCount}" />
			<!-- 数据源条数 -->
			<%
				//总共的页数
				int content = Integer.parseInt((String)pageContext.getAttribute("content"));
				pageContext.setAttribute("content", content);//页面大小
				int dataNum = (int) pageContext.getAttribute("dataNum");
				int contPage = dataNum % content == 0 ? dataNum / content : (int) (dataNum / content) + 1;
				pageContext.setAttribute("contPage", contPage);
			%>
			<c:set var="start" value="${(before-1)*content}" />
			<!-- 起始值-->

			<sql:query var="fin" dataSource="${ds}"
				sql="select * from userifo limit ?,?">
				<sql:param value="${start}"></sql:param>
				<!-- 起始值 -->
				<sql:param value="${content}"></sql:param>
				<!-- 页面大小 -->
			</sql:query>
			<div class="neirong tex2">

				<c:forEach items="${fin.rows}" var="st">
					<table>
						<tr>
							<td class="id">${ st.username}</td>
							<td class="nam">${ st.password}</td>
							<td class="sex">${ st.email}</td>
							<td class="year">${ st.age}</td>
							<td class="clas">${ st.sex}</td>
							<td class="qian">${ st.gxqm}</td>
							<td class="city">${ st.city}</td>
							<td class="phone">${ st.phone}</td>
							<td class="iid">${ st.celebrityID}</td>
							<td class="images">${ st.img}</td>
							<td class="cao"><a href="updateStu.jsp?id=${st.id}">修改</a>&nbsp;&nbsp;<a
								href="deleteStu.jsp?id=${st.id}">删除</a></td>
						</tr>

					</table>
					<hr>

				</c:forEach>



			</div>


			<div class="xiayi">
				<p class="fir">
					<span>共<span class="redd">${contPage}</span>页，当前<span
						class="redd">${before}</span>页
					</span> <span class="three"><a href="yonghu.jsp?befo=1">首页</a></span> <span><a
						href="yonghu.jsp?befo=${before-1<=1?1:before-1}">上一页</a></span>
					<span><a
						href="yonghu.jsp?befo=${before+1>=contPage?contPage:before+1}">下一页</a></span>
					<span><a href="yonghu.jsp?befo=${contPage}">尾页</a></span>

					<span class="nex">跳转到:</span> <input type="text" id="val" name=""
						class="inpu" /> <input type="button" name="" value="GO"
						onclick="tiao()">
				</p>
			</div>
		</div>
	</div>

	<script>
		setInterval(function() {

			document.getElementById("time").innerHTML = Date();

		}, 1000)
		
		function tiao() {
			var e = document.getElementById("val").value;
			window.location.href = "yonghu.jsp?befo="+e;
		}
	</script>
</body>
</html>