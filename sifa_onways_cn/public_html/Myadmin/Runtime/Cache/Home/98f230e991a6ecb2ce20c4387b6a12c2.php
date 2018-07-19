<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>司法干警自助一体机</title>
<link rel="stylesheet" href="/Myadmin/Home/View/Static/css/pintuer.css">
<link rel="stylesheet" href="/Myadmin/Home/View/Static/css/admin.css">
<link rel="stylesheet" href="/Myadmin/Home/View/Static/css/style.css">
<script src="/Myadmin/Home/View/Static/js/jquery.js"></script>
<script src="/Myadmin/Home/View/Static/js/pintuer.js"></script>
</head>


<body style="background-color:#f2f9fd;">

<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1><img src="/Myadmin/Home/View/Static/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />社区矫正自助一体机</h1>
    </div>

    <div class="head-l" style="float: right; padding-right: 20px;">
        <a href="<?php echo ($site_url); ?>" class="button button-little bg-green" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
        <!--<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a>-->
        <a href="/myadmin.php/Home/Public/loginOut" class="button button-little bg-red"><span class="icon-power-off"></span> 退出登录</a>
    </div>
</div>

<div class="leftnav">
    <h2><span class="icon-user"></span>文章</h2>
    <ul style="display:block">
        <li><a href="/myadmin.php/Home/Article/" target="right"><span class="icon-caret-right"></span>文章列表</a></li>
        <li><a href="/myadmin.php/Home/Article/add" target="right"><span class="icon-caret-right"></span>添加文章</a></li>
        <?php if(is_array($pagenav)): foreach($pagenav as $key=>$nav): ?><li><a href="/myadmin.php/Home/Page/index/?id=<?php echo ($nav["id"]); ?>" target="right"><span class="icon-caret-right"></span><?php echo ($nav["name"]); ?></a></li><?php endforeach; endif; ?>
        <li><a href="/myadmin.php/Home/Articlecategory/" target="right"><span class="icon-caret-right"></span>文章分类</a></li>
    </ul>

    <h2><span class="icon-user"></span>预约</h2>
    <ul style="display:none">
        <li><a href="/myadmin.php/Home/Appointment/undeal" target="right"><span class="icon-caret-right"></span>待处理</a></li>
        <li><a href="/myadmin.php/Home/Appointment/index" target="right"><span class="icon-caret-right"></span>所有预约</a></li>
    </ul>

    <h2><span class="icon-user"></span>档案管理</h2>
    <ul style="display:none">
        <li><a href="/myadmin.php/Home/Dangan/index" target="right"><span class="icon-caret-right"></span>所有档案</a></li>
        <li><a href="/myadmin.php/Home/Dangan/add" target="right"><span class="icon-caret-right"></span>添加档案</a></li>
    </ul>

    <h2><span class="icon-user"></span>基本设置</h2>
    <ul style="display:none">
        <li><a href="/myadmin.php/Home/site/" target="right"><span class="icon-caret-right"></span>网站设置</a></li>
		<li><a href="/myadmin.php/Home/site/updatePwd" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    </ul>
</div>

<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="/myadmin.php/Home/Appointment/undeal.html" name="right" width="100%" height="100%"></iframe>
</div>

</body>
<script>
$("#file0").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumb").show();
        $("#img0").attr("src", objUrl) ;
    }
}) ;
$("#file1").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumbs").show();
        $("#img1").attr("src", objUrl) ;
    }
}) ;
$("#file2").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumbs").show();
        $("#img2").attr("src", objUrl) ;
    }
}) ;
$("#file3").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumbs").show();
        $("#img3").attr("src", objUrl) ;
    }
}) ;
$("#file4").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumbs").show();
        $("#img4").attr("src", objUrl) ;
    }
}) ;
$("#file5").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumbs").show();
        $("#img5").attr("src", objUrl) ;
    }
}) ;
$("#file6").change(function(){
    var objUrl = getObjectURL(this.files[0]) ;
    console.log("objUrl = "+objUrl) ;
    if (objUrl) {
        $("#thumbs").show();
        $("#img6").attr("src", objUrl) ;
    }
}) ;

function getObjectURL(file) {
    var url = null ;
    if (window.createObjectURL!=undefined) { // basic
        url = window.createObjectURL(file) ;
    } else if (window.URL!=undefined) { // mozilla(firefox)
        url = window.URL.createObjectURL(file) ;
    } else if (window.webkitURL!=undefined) { // webkit or chrome
        url = window.webkitURL.createObjectURL(file) ;
    }
    return url ;
}

$("#checkall").click(function(){
    $("input[name='id[]']").each(function(){
        if (this.checked) {
            this.checked = false;
        }
        else {
            this.checked = true;
        }
    });
})
</script>
</html>

<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>