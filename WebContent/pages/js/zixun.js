$(function(){


var j = false;
	$(".dh_xia img").click(function(){


			$(".dhxia").animate({width: 'toggle'},1000); 
				$(".dh_xia").css({

					"z-index":"99999999"
				}) 	

				if (j) {

					$(document.body).css({"overflow-y":"auto"});
		
					j = false;
				}else{

		$(document.body).css({"overflow-y":"hidden"});
		
					j = true;

				}

	})


})
