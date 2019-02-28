$.ajax({
     type : "GET",
     url : "../../MAINpages/User/GrUser.jsp",
     dataType : "json",
     success : function (data) {
   	 
    	if(data.img == null){	
    	$(".yuan img").attr("src","../../../images/touxiang/0.png");
    	$(".head img").attr("src","../../../images/touxiang/0.png");
    	}else{
    	$(".yuan img").attr("src","../../../images/touxiang/"+data.img+"");	
    	$(".head img").attr("src","../../../images/touxiang/"+data.img+""); 	
    	} 
    	if(data.sex == null){
        $("#sex").html("性别:?");
    	}else{
        $("#sex").html("性别:"+data.sex);		
    	}
    	if(data.age == null){
        $("#age").html("年龄:?");
        }else{
        $("#age").html("年龄:"+data.age);    
        }
    	if(data.gxqm == null){
        $("#gxqm").html("?");
        }else{
        $("#gxqm").html(data.gxqm);  	
        }
    	if(data.email == null){
        $("#email").html("?");
        }else{
        $("#email").html(data.email); 	
        }
    	if(data.phone == null){
        $("#phone").html("?");
        }else{
        $("#phone").html(data.phone);   	
        }
    	if(data.city == null){
        $("#city").html("?");
        }else{
        $("#city").html(data.city); 	
        }	
   	
    $("#username").html(data.username);


     }
     })

     
   