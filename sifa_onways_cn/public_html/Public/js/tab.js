var listTabLen = $("#tab li").length;
var liWidth = (97/listTabLen) + '%';
if(listTabLen == 4){
	$(".list-wap").css({"padding-left":"20px"});
}

$("#tab li").css({"width":liWidth});
/*$("#tab2").show();

$("#tab li").click(function(){
	$(this).addClass("current").siblings().removeClass("current");
	var cur = $(this).attr("data");
	$("#"+cur).show().siblings().hide();
});*/
