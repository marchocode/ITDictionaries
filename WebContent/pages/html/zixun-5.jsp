<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ include file="../../MAINpages/Database.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <meta name="author" content="#">
	
    <title>IT辞典</title>

  
	
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">

	<link href="../css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/login.css">

    <script src="../fonts/font_login/iconfont.js"></script>
</head>
<body>
<div class="beijing" id="bbb" style="width: 100%;height: 100%;position: fixed;background-color: rgba(196,196,196,0.5);z-index: 9999;"></div>
<!-- <div id="logok"><img id="logo1" src="../images/LOGO1.png"></div> -->
	<div class="wrap-body">
		<!-- Intro -->
		<div id="intro"></div>

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
      <a href="#" class="navbar-brand nav-title" style="font-family: jokerman">JIE</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-menu">
      <ul class="nav navbar-nav navbar-right">
        <li class="cative login"  id="login-dh"><a href="#">登录</a></li> 
        <li class="active"><a href="zixun-1.jsp">IT资讯</a></li>
        <li class="cative"><a href="mingren.jsp">IT名人馆</a></li>
		<li class="dropdown">
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
<!--                     <li><a href="xiaoxi-3.html">IT表白墙</a></li> -->
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
                <input id = "user" type="text" name="" placeholder="UserName">


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





		<header id="page-header">
			<nav id="menu" class="navbar">
				<div class="container">
					<div class="row">
					<div class="navbar-header"><span id="heading" class="visible-xs"></span>
					  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">资讯导航</button>
					</div>
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li><a href="zixun-1.jsp">最新资讯</a></li>
							<li ><a href="zixun-2.jsp">软件资讯</a></li>
							<li ><a href="zixun-3.jsp">硬件资讯</a></li>
							<li><a href="zixun-4.jsp">IT新技术</a></li>
							<li class="active"><a href="zixun-5.jsp">IT热点排行</a></li>
						</ul>
					</div>
					</div>
				</div>
			</nav>
		</header>
       
		

	






	
		<div id="page-content" class="container">
			<div class="row">
				<!-- ////////////Content Box 01 -->
				<div style="width: 100%;">
					
					<div id="zw" class="container">
			<sql:query var="rs" dataSource="${ds }">
	
			select * from information where zixuncategory = ?;
			
			<sql:param>IT热点排行</sql:param>	
	
	</sql:query>			
				
				
		<c:forEach items="${rs.rows }" var="zhi">
		
		
					<div class="row">
		
		<div id="img-1" class="col-sm-6"><img src="${zhi.zixunimg }"></div>
		<div id="img-1-zi" class="col-sm-6">
			<span class="biaoti">${zhi.zixuntitle}</span>
			<span class="wenzi">${zhi.zixunbody }</span>
<a style = "color: white;text-decoration: none" href="zixun/zixun-k5.jsp?id=${zhi.zixunid}">
<button type="button" class="btn btn-info">更多</button></a>

		</div>
</div>
		
	
		</c:forEach>		



</div>
				</div>
				
				
			</div>	
		</div><!-- End Content -->
	
	<div style="width: 100%;height: 200px;">
		
	</div>

	<div class="dh_xia">
		
	 	<img src="../images/caidan.png">
 
	</div>


	<div class="dhxia">

<div class="dhxia-auto">
	<div class="left-xia">
		<div class="left-imgc"><a href="zixun-1.jsp"><img src="../images/itzixun.jpg"></a></div>
		<div class="left-imgd"><a href="register.html"><img src="../images/033.jpg"></a></div>
		<div class="left-imgd-2"><a href="zhishi.jsp"><img src="../images/044.jpg"></a></div>
		<div class="left-imgg"><a href="zhishi2.html"><img src="../images/099.jpg"></a></div>
		<div class="left-imgc"><a href="xiaoxi.html"><img src="../images/011.jpg"></a></div>

	</div>

	<div class="right-xia">
		<div class="right-imgda">



<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
		<a href="zixun-4.jsp">	<img src="../images/055.jpg"></a>
		</div>
		<div class="item">
		<a href="zhishi1.jsp">	<img src="../images/066.jpg"></a>
		</div>
		<div class="item">
		<a href="search2.html">	<img src="../images/022.jpg"></a>
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div> 





		</div>
		<div class="right-imgk"><a href="search2.html"><img src="../images/077.jpg"></a></div>
		<div class="right-imgk2"><a href="zhishi.jsp"><img src="../images/088.jpg"></a></div>
		<div class="right-imgk"><a href="zhishi2.html"><img src="../images/100.jpg"></a></div>
		<div class="right-imgk2"><a href="mingren.jsp"><img src="../images/111.jpg"></a></div>
	</div>

</div>
	

 
	</div>

	

	</div><!-- .wrap-body -->



	
	<!-- jQuery and Plugin-->
	<script src="../js/jquery-3.2.1.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/zixun.js"></script>



	<script>
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
		$(document).ready(function() {
		  $(".line-2").arctext({radius: 400});
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

		$("#zhuce").click(function(){

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

