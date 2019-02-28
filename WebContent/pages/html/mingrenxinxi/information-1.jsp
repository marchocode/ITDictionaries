<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../../MAINpages/Database.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>infor</title>

    <!-- 引入css文件 -->
    <link rel = "stylesheet" href = "../../css/information.css" />
    <script src="../../fonts/font_dianzan/iconfont.js"></script>

  

</head>
<body>
	<sql:query var="rs" dataSource="${ds}">
	select celebrity.celebrityname,celebrityifo.* from celebrity,celebrityifo where celebrity.celebrityid = celebrityifo.celebrityid and celebrity.celebrityid = ?;
		<sql:param>${param.id }</sql:param>
	</sql:query>
	
	
    <div class = "all">
<span id="idcele" style="display:none">${param.id }</span>
<c:forEach var="zhi" items="${rs.rows}">
		
		 <div class = "big-back">

            <div class = "medium-back">
                <div class = "medium-back-son">

                        <div class = "person-back">

                            <div class = "head-back">
                                <div class = "yuan">
                                    <img src="${zhi.celebrityimg }" alt="mayun">

                                </div>

                                <div class = "name">
                                    <h2>${zhi.celebrityname }</h2>
                                    <p>${zhi.celebrityintroduce }</p>
                                </div>
                            </div>

                            <div class = "btn-back">
                                <div class="dzan">
<svg class="icon" id = "xin" aria-hidden="true">
  <use xlink:href="#icon-dianzan3"></use>
</svg>
<span class="num">${zhi.celebritygood }</span>
                                </div>
                            </div>

                        </div>

                        <div class = "for-back">
                            <div class = "back-cell">
                                <div class = "back-cell-a">
                                    <div class = "a-son">

                                        <span style = "color: rgb(220, 167, 0); font-size: 28px;">信息
                                        </span>
								<div style = "text-indent: 20px;">
                                      
                                ${zhi.celebritychinaifo}
                                      
                                      
								</div>
                                    </div>
                                </div>
                            </div>

                            <div class = "back-cell2">
                                <div class = "back-cell-b">
                                    <div class = "b-son">

                                        <br>
                                        <br>
                                        <span style = "color: black; font-size: 28px;">ABOUT&nbsp;
                                        </span>

                                        <span style = "color: black; font-size: 28px">ME
                                        </span>
										<div style = "text-indent: 20px;">
                                     ${zhi.celebrityenglishifo }
</div>
                                    </div>
                                </div>
                            </div>

                        </div>


                </div>
            </div>

        </div>
		

		
	</c:forEach>


       
    </div>
<script src="../../js/jquery-3.3.1.js"></script>
<script>





$(".dzan").click(function(){
	
	$.ajax({
	    type : "GET",
	    url : "../../../MAINpages/sion.jsp",
	    dataType : "text",
	    success : function (data) {
	    	var zhi = $.trim(data);
	    	 if(zhi != "null"){
	    		 $.ajax({
	    			    type : "GET",
	    			    url : "../../../MAINpages/mrdz.jsp",
	    			    dataType : "text",
 				success: function(data) {
 		
 			var zhi = $.trim(data);
 					
 				if(zhi == 0){
 			
 					$.ajax({
 			   			
 		 				cache: false,
 		 				 
 		 				type: "POST",
 		 				 
 		 				url:"../../../MAINpages/addMrdz.jsp",
 		 				
 		 				datatype:"text",
 		 				 
 		 				data:{dzx:$("#idcele").text()},
 		 				 
 		 				async: false,
 		 				 
 		 				error: function(request) {
 		 				 
 		 				alert("发送请求失败！");
 		 				 
 		 				},
 		 				 
 		 				success: function(data) {
 		 					zhi = $.trim(data);
 		 					alert(zhi);
 		 					window.location.reload();
 		 				}
 		 				});
 					
 					
 					
 					
 				}else{
 					
 					alert("对不起 每个用户只能点赞一次哦");
 				}
 					
 				
 				}
 				});

	    	 }else{
	 	    	
	  	    	alert("我最亲爱的用户 请先登录 才能点赞哦！");
  	    }
	    }
	})
	   	
	
})

</script>

</body>
</html>