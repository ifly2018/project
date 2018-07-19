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

<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form action="/myadmin.php/Home/Public/doLogin" method="post">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top"><h1>司法干警自助一体机</h1></div>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="name" placeholder="登录账号" data-validate="required:请填写账号" />
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <!--
                        <div class="form-group">
                            <div class="field">
                                <input type="text" class="input input-big" name="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
                                <img src="images/passcode.jpg" alt="" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;" onclick="this.src=this.src+'?'">

                            </div>
                        </div>
                        -->
                    </div>
                    <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
                </div>
            </form>
        </div>
    </div>
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