// 获取list列表并添加点击事件
window.onload = function ()
{
    // 获取ul列表
    var oul = document.getElementById("lis");
    var oli = oul.getElementsByTagName("li")
    //添加点击事件
    oli[0].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(231, 0, 18)";
    }
    oli[1].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(198, 145, 191)";
    }
    oli[2].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(25, 48, 116)";
    }
    oli[3].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(1, 108, 186)";
    }
    oli[4].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(247, 179, 36)";
    }
    oli[5].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(188, 213, 57)";
    }
    oli[6].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(235, 91, 2)";
    }
    oli[7].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(0, 179, 199)";
    }
    oli[8].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(238, 128, 157)";
    }
    oli[9].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(0, 0, 0)";
    }
    oli[10].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(1, 70, 139)";
    }
    oli[11].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(150, 21, 114)";
    }
    oli[12].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(250, 181, 0)";
    }
    oli[13].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(145, 198, 68)";
    }
    oli[14].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(230, 0, 90)";
    }
    oli[15].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(230, 0, 47)";
    }
    oli[16].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(239, 120, 64)";
    }
    oli[17].onclick = function ()
    {
        document.body.style.backgroundColor = "rgb(229, 0, 95)";
    }
    //获取input框
    var oinput = document.getElementById("inp");
    //获取textarea框
    var otextarea = document.getElementById("tex");
    //获取按钮
    var obtn = document.getElementById("btn");

    //添加点击事件
    
    var xmlhttp=new XMLHttpRequest();
    
    
    obtn.onclick = function (){
        
    	if(oinput.value.length != 0 && otextarea.value.length != 0){
    		
    		
    		$.ajax({
      			 
   				cache: false,
   				 
   				type: "POST",
   				 
   				url:"../../MAINpages/MessageMain.jsp", //把表单数据发送到ajax.jsp
   				 
   					data:$("form").serialize(), //要发送的是ajaxFrm表单中的数据
   				 
   				async: false,
   				 
   				error: function(request) {
   				 
   				alert("发送请求失败！");
   				 
   				},
   				 
   				success: function(text) {
   					
   					alert(text);
   				}
   				 
   				});
    		
    		
        }
        else if(oinput.value.length == 0 && otextarea.value.length == 0)
        {
                alert("提交失败，请填写姓名并留言");
        }
        else if(otextarea.value.length == 0)
        {
            alert("说点什么吧......！");
        }
        else
        {
            alert("姓名不能为空！");
        }

    }
    // 弹出调色版

    $(function()
    {
        var a = true;
        //添加点击事件
        $("#icon-tubiao-").click(function()
        {

            if (a)
            {
                $(".lists").slideDown(700,function()
                {

                });
                a = false;
            }
            else
            {
                $(".lists").slideUp(700,function()
                {

                });
                a = true;
            }

        });
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

}





