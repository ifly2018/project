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
<ul class="bread">
    <li>文章分类</li>
</ul>

<form method="post" action="/myadmin.php/Home/Articlecategory/del?all=1">
    <div class="panel admin-panel">
        <div class="panel-head">
            <a href="/myadmin.php/Home/Articlecategory/add" target="right" style="color:#fff; background:#09c; padding:3px 6px;"><strong class="icon-plus"> 添加分类</strong></a>
        </div>

        <table class="table table-hover text-center">
            <tr>
                <th width="50">ID</th>
                <th style="text-align: left">分类名称</th>
                <th>操作</th>
            </tr>

            <?php if(is_array($category)): foreach($category as $key=>$d): ?><tr id="list<?php echo ($d["id"]); ?>">
                <td><?php echo ($d["id"]); ?></td>
                <td  style="text-align: left"><?php echo ($d["html"]); echo ($d["name"]); ?></td>
                <td>
                    <div class="button-group">
                        <a class="button border-main" href="/myadmin.php/Home/Articlecategory/edit?id=<?php echo ($d["id"]); ?>"><span class="icon-edit"></span> 修改</a>
                        <a class="button border-red" href="javascript:void(0)" onclick="return del(<?php echo ($d["id"]); ?>,'/myadmin.php/Home/Articlecategory/del')"><span class="icon-trash-o"></span> 删除</a>
                    </div>
                </td>
            </tr><?php endforeach; endif; ?>


        </table>
    </div>
</form>

<div class="note" id="note">删除成功</div>

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
function del(id, url){
    if(confirm("您确定要删除吗?")){
        $.post(url,{id:id}, function(ret){
            if(ret.state == '1'){
                $("#note").show();
                setTimeout(function () {
                    $("#note").hide();
                    $("#list" + id).remove();
                }, 500);
            }
        });
    }
}
</script>