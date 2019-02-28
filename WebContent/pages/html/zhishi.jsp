<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ include file="../../MAINpages/Database.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>欢迎来到开心答题！！</title>
<script src="../js/jquery-3.3.1.js"></script>
	<script src="../js/bootstrap.min.js"></script>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/answcss.css">
 <link rel="stylesheet" type="text/css" href="../css/login.css">
    <script src="../fonts/font_login/iconfont.js"></script>
<style>
#logok {
	position: absolute;
	position: fixed;
	top: 5px;
	width: 200px;
	height: 50px;
	z-index: 9991;
}

#logo1 {
	position: absolute;
	width: 100%;
	z-index: 9991;
}
.answer{
display:none;
}
.answ_big{
 height: 650px;
}
#all{
display:none;
}
#bsex{
width:500px;
height:130px;
font-size:25px;
 position: absolute;
          top: 0;
          right: 0;
          bottom: 0;
          left: 0;
          margin:auto;
}
#butto1{
display:none;
}

@media screen and (max-width: 760px) {
#bsex{
width:400px;
height:100px;
 
}
.big_t1{
margin-top: 100px;
}
.big_t2{
margin-top: 100px;
}
.big_t3{
margin-top: 100px;
}
#butto1{
margin-top: 100px;
}
}
@media screen and (max-width: 400px) {
#bsex{
width:380px;

}
}
@media screen and (max-width: 390px) {
#bsex{
width:340px;

}

}
</style>
</head>
<body>
<div class="beijing" id="bbb" style="width: 100%;height: 100%;position: fixed;background-color: rgba(196,196,196,0.5);z-index: 9999;display:none;"></div>

	<div id="logok">
		<img id="logo1" src="../images/LOGO1.png">
	</div>
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top"
		role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-menu">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand nav-title"></a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav navbar-right">
				<li class="cative login" id="login-dh"><a href="#">登录</a></li>
				<li class="cative"><a href="zixun-1.jsp">IT资讯</a></li>
				<li class="cative"><a href="mingren.jsp">IT名人馆</a></li>
				<li class="dropdown active"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> 知识竞赛 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="zhishi.jsp">知识答辩</a></li>
						<li><a href="zhishi1.jsp">知识升级</a></li>
						<li><a href="zhishi2.html">知识积分</a></li>
						<li><a href="zhishi4.html">知识排行</a></li>
					</ul></li>



				<li class="cative"><a href="search2.html">名词查找</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> 消息圈 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="xiaoxi.html">发表</a></li>
					
						<li><a href="xiaoxi-2.html">我的消息圈</a></li>
<!-- 						<li><a href="xiaoxi-3.html">IT表白墙</a></li> -->
					</ul></li>
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



<button id="bsex" type="button" class="btn btn-info col-sm-4">点击开始答题</button>

	<div id="all" class="outer container">


		<c:forEach begin="1" end="3">

			<%!int m = 0;
			int n, l = 0;%>
			
			

			<%
				m = 1 + (int) (Math.random() * 9);
					n = m + 1;
					l = m + 2;
					
			%>
			
			
			<c:set var="answer" value=""/>
			 
			<sql:query var="ti" dataSource="${ds}"
				sql="select * from knowledge where knowledgeID =?">
				<sql:param value="<%=m%>"></sql:param>
			</sql:query>

			<sql:query var="ti1" dataSource="${ds}"
				sql="select * from knowledge where knowledgeID =?">
				<sql:param value="<%=n%>"></sql:param>
			</sql:query>

			<sql:query var="ti2" dataSource="${ds}"
				sql="select * from knowledge where knowledgeID =?">
				<sql:param value="<%=l%>"></sql:param>
			</sql:query>



			<div class="answ_big row" id="uul">
			
			
				<c:forEach items="${ti.rows}" var="tt">
				
					<div class="big_t1 col-sm-4">
						<div class="t1_top">
							<p>${tt.knowledgelTitle}</p>
						</div>
						<div class="t1_buttom">
							<ul>
								<li>A).${tt.knowledgeA}</li>
								<li>B).${tt.knowledgeB}</li>
								<li>C).${tt.knowledgeC}</li>
								<li>D).${tt.knowledgeC}</li>
								<li class="answer">正确答案:${tt.knowledgeAnswer}</li>
							</ul>
						</div>
					</div>
				</c:forEach>
				<!--第二个答题-->
				<c:forEach items="${ti1.rows}" var="tt1">

					<div class="big_t2 col-sm-4">
						<div class="t1_top">
							<p>${tt1.knowledgelTitle}</p>
						</div>
						<div class="t1_buttom">
							<ul>
								<li>A).${tt1.knowledgeA}</li>
								<li>B).${tt1.knowledgeB}</li>
								<li>C).${tt1.knowledgeC}</li>
								<li>D).${tt1.knowledgeC}</li>
								<li class="answer">正确答案:${tt1.knowledgeAnswer}</li>
							</ul>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${ti2.rows}" var="tt2">
					<!--第三个答题-->
					<div class="big_t3 col-sm-4">
						<div class="t1_top">
							<p>${tt2.knowledgelTitle}</p>
						</div>
						<div class="t1_buttom">
							<ul>
								<li>A).${tt2.knowledgeA}</li>
								<li>B).${tt2.knowledgeB}</li>
								<li>C).${tt2.knowledgeC}</li>
								<li>D).${tt2.knowledgeC}</li>
								<li class="answer">正确答案:${tt2.knowledgeAnswer}</li>
							</ul>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:forEach>

	
	<!--第一排，装三个答题的大盒子-->





	<div class="nav_xiab row">
	<button id="butto1" type="button" class="btn btn-info col-sm-4">点击开始下一局</button>
		<button id="butto" type="button" class="btn btn-info col-sm-4">提交</button>
	</div>

	</div>

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
	
	
	$(function(){
		
		
		
		 $("#uul li").click(function(){
				
				$(this).css("background","#FFBDC4").siblings().css("background","#ffffff");
				$(this).attr("title","你选择了它").siblings().removeAttr("title");
				
			});
		 
		
		$("#butto") .click(function(){
			
			var a = $("[title='你选择了它']").text();
			
			var leng = a.length;
			var score = 0;//用户答对数量
			var error = 0;//错误数量
			
			var text = "";
			var array = new Array();//用户选择的答案数组
			
			
			for (var i =1; i <= 9; i++) {
				
				var index = a.indexOf(").");
				text += a.substring(index-1,index+1);
				a = a.substring(index+2,leng);
				
				
			}

			if (text != null) {
				array = text.split(")");
			}

			
			//取出正确答案；
			
			var b = $(".answer").text();
			var bleng = b.length;
			var text1="";

			
			
			for (var n =1; n <= 9; n++) {
				
				var index = b.indexOf(":");
				text1 += b.substring(index+1,index+2);
				b = b.substring(index+2,bleng);
				
				
			}
			
			var exactness = new Array();//正确答案数组
			for (var a = 0; a < 9; a++) {
				
				
				exactness[a] = text1[a];
			}
			//成绩比对；

			
			for (var s = 0; s < 9; s++) {
				
				if (array[s] == exactness[s]) {
					score++;
				} else {
					
					error++;
				}
				
			}
			
			
			
			alert("你获得的积分是"+score+"答错的题目"+error);
			
			
			$.ajax({
			    type : "POST",
			    url : "../../MAINpages/zhishi/Jf.jsp",
			    data:{jf:score},
			    error: function(request) {
  	   				alert("发送请求失败！");
  	   				}
			})
			
			
			$(".answer").css("display","block");
			
			$("#butto1").css("display","block");
			
			$("#butto").css("display","none");
			
		});
	})
	
	
	$("#bsex").click(function(){
		
		 $.ajax({
	      	    type : "GET",
	      	    url : "../../MAINpages/sion.jsp",
	      	    dataType : "text",
	      	    success : function (data) {
	      	       
	      	    var zhi = $.trim(data);
	      	    if(zhi != "null"){
	      	    	
	      	    	$("#bsex").css({"display":"none"})
	      			$("#all").fadeIn(500);
	      	    }else{
	      	    	alert("您必须先登录才能答题");
	      	    }
	      	    }
 		 })

		
	})
		
	$("#butto1").click(function(){
		window.location.reload();
	})
		
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