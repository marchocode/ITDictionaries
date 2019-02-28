<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ include file="../../MAINpages/Database.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>欢迎来到开心答题！！</title>
     <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/upgra.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">
    <script src="../fonts/font_login/iconfont.js"></script>
    <style>

         #logok{
  position:absolute;
  position: fixed;
  top: 5px;
  width: 200px;
  height: 50px;
  z-index: 9991;
}
#logo1{
  position:absolute;
  width: 100%;
  z-index: 9991;
}
    </style>
</head>
<body>
<div class="beijing" id="bbb" style="width: 100%;height: 100%;position: fixed;background-color: rgba(196,196,196,0.5);z-index: 9999;display:none;"></div>

<div id="logok"><img id="logo1" src="../images/LOGO1.png"></div>


    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand nav-title"></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-menu">
          <ul class="nav navbar-nav navbar-right">
            <li class="cative login" id="login-dh"><a href="#">登录</a></li>
            <li class="cative"><a href="zixun-1.jsp">IT资讯</a></li>
            <li class="cative"><a href="mingren.jsp">IT名人馆</a></li>
            <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        知识竞赛
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="zhishi.jsp">知识答辩</a></li>
                    <li><a href="zhishi1.jsp">知识升级</a></li>
                    <li><a href="zhishi2.html">知识积分</a></li>
                    <li><a href="zhishi4.html">知识排行</a></li>
                    </ul>
              </li>



            <li class="cative"><a href="search2.html">名词查找</a></li>
            <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        消息圈
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="xiaoxi.html">发表</a></li>
                      
                        <li><a href="xiaoxi-2.html">我的消息圈</a></li>
<!--                         <li><a href="xiaoxi-3.html">IT表白墙</a></li> -->
                    </ul>
              </li>
            <li class="cative"><a href="liuyan.html">留言</a></li>
            <li class="cative"><a href="geren.html">个人中心</a></li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="nei">
        <div class="top_nei">
            <img src="../images/logo.png" alt="">
            <div class="cha"><Span>&chi;</Span></div>
        </div>
        <div class="bottom_nei">
            <!--表单区域-->
            <div class="log">

            </div>
            <div class="log2">
                <span>Login  </span>
                <a href="">IT辞典</a>
            </div>

            <!--登录输入框-->
            <div class="inpu">
                <input id="user" type="text" name="" placeholder="UserName">


                <svg class="icon input_ico" aria-hidden="true">
                  <use xlink:href="#icon-account"></use>
                </svg>


            </div>

             <div class="inpu inpu2">
                <input id="pw" type="password" name="" placeholder="Password">
                 <svg class="icon input_ico" aria-hidden="true">
                  <use xlink:href="#icon-password"></use>
                </svg>

            </div>

             <div class="inpu inpu2 butto">
                <input id="dlx" type="button" name="" value="登  录">

            </div>


            <!--登录注册小字部分-->

             <div class="log bom">
                <span id="zhuce"><a href="register.html" target="blank">注册</a></span>
                <span class="right"><a href="">忘记密码</a></span>
            </div>


        </div>
    </div>
    
    
    
<sql:query var="zong" dataSource="${ds}" sql="select * from knowledgeData">
		
</sql:query>
		

		<c:set var="before" value="${param.befo==null? 1:param.befo}"/><!--当前页 -->
		
		<c:set var="content" value="9"/><!-- 页面大小 -->
		<c:set var="dataNum" value="${zong.rowCount}"/><!-- 数据源条数 -->
		
		<%
		
			//总共的页数
			int content =9;
			int dataNum = (int)pageContext.getAttribute("dataNum");
			
			int contPage = dataNum % content ==0?dataNum/content:(int)(dataNum/content)+1;
			
			pageContext.setAttribute("contPage", contPage);
			
		%>
		<c:set var="start" value="${(before-1)*content}"/><!-- 起始值-->
		
		
<sql:query var="ze" dataSource="${ds}"
		sql="select * from knowledgeData limit ?,?">
		<sql:param value="${start}"></sql:param>
		<sql:param value="${9}"></sql:param>
</sql:query>



<div class="outer container">
	<div class="answ_big row">
			<c:forEach items="${ze.rows}" var="zz">
				
					<div class="big_t1 col-sm-4">
	                <div class="t1_top">
	                    <img src="${zz.knowledgeDataIMG}">
	                </div>
	                <div class="t1_text">
	                    <span>${zz.knowledgeDataTitle}</span>
	                </div>
	                <div class="t1_buttom">
	                    <p>${zz.knowledgeDataJ}</p>
	                </div>
	                <div class="genduo"><p><a href="zhishi1sh.jsp?knowledgeDataID=${zz.knowledgeDataID}">点击查看详情</a></p></div>
           			</div>
           			
		</c:forEach>
	</div>
	<div class="botton_nav" style="text-align: center;">
		<a href="zhishi1.jsp?befo=1"><button class="btn btn-default">首页</button></a>
		<a href="zhishi1.jsp?befo=${before-1<=1?1:before-1}"><button class="btn btn-default">上一页</button></a>
		<a href="zhishi1.jsp?befo=${before+1>contPage?contPage:before+1}"><button class="btn btn-default">下一页</button></a>
		<a href="zhishi1.jsp?befo=${contPage}"><button class="btn btn-default">尾页</button></a>
		<span>第${before}页</span>
		<form action="" class="form-inline" role="form" style="display: inline">
			 <div class="form-group" >
			    <label for="name">跳转</label>
    			<input type="text" class="form-control" style="width: 40px" name="befo" />
  			</div>
			<button type="submit" class="btn btn-default">GO</button>
		</form>
	</div>
	
</div>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $.ajax({
        type : "GET",
        url : "../../MAINpages/sion.jsp",
        dataType : "text",
        success : function (data) {
        	var zhi = $.trim(data);
        	
        if(zhi != "null")	
          
        	$("#login-dh").css({
        		
        		"display":"none"
        	})
        }
    });
$(".login").click(function(){
		
		$("#bbb").css({"display":"block"});
	$(document.body).css({"overflow-y":"hidden"});

		$(".nei").show(1100);

	})

	$(".cha").click(function(){

		$("#bbb").css({"display":"none"});
	$(document.body).css({"overflow-y":"auto"});

		$(".nei").hide(1000);
	})
 
   $("#dlx").click(function(){
	
	var username = $("#user").val();
	
	var password = $("#pw").val();
	
	if(username.length == 0 || password.length == 0){
		
		alert("请输入完整的信息");
	
	}else{
		
$.ajax({
			 
				
				cache: false,
				 
				type: "POST",
				 
				url:"../../MAINpages/Login.jsp",
				
				datatype:"text",
				 
				data:{name:username,password:password},
				 
				async: false,
				 
				error: function(request) {
				 
				alert("发送请求失败！");
				 
				},
				 
				success: function(data) {
		
			var zhi = $.trim(data);
					
			if(zhi == "成功"){
				
				window.location.reload();
				
			}else{
				
				alert(zhi)
			}
					
				
				}
				});
		
	}
	
		
	
	
})        
    
    </script>

</body>
</html>

