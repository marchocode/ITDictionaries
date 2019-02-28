$(function(){
  var width = $(window).width();
	if(screen.width < 768 || width < 768 ){
		$(".login").click(function(){
			window.open("moblie/login.html",'_self');
		})
	}
});
