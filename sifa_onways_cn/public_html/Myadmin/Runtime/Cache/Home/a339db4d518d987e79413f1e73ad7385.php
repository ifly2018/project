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
    <li>文章列表</li>
    <li style="float:right;">
        <form action="/myadmin.php/Home/Article/search" method="post">
            <select name="type" class="sosoinput" style="margin-right:-5px;">
                <?php if(is_array($category)): foreach($category as $key=>$cate): ?><option value="<?php echo ($cate["id"]); ?>"><?php echo ($cate["html"]); echo ($cate["name"]); ?></option><?php endforeach; endif; ?>
            </select>
            <input type="text" name="keywords" id="keywords" value="<?php echo ($keywords); ?>" placeholder="" class="sosoinput" style="width:200px;text-indent:5px;"  />
            <input type="submit" value="搜索" class="soso" />
        </form>
    </li>
</ul>

<form method="post" action="/myadmin.php/Home/Article/del?all=1">
    <div class="panel admin-panel">
        <div class="panel-head">
            <a href="/myadmin.php/Home/Article/add" target="right" style="color:#fff; background:#09c; padding:3px 6px;">
                <strong class="icon-plus"> 添加文章</strong>
            </a>
        </div>


        <table class="table table-hover text-center">
            <tr>
                <th width="120">ID</th>
                <th>分类</th>
                <th>标题</th>
                <th>发布时间</th>
                <th>操作</th>
            </tr>

            <?php if(is_array($data)): foreach($data as $key=>$d): ?><tr id="list<?php echo ($d["id"]); ?>">
                <td><!--<input type="checkbox" name="ids[]" value="<?php echo ($d["id"]); ?>" />--><?php echo ($d["id"]); ?></td>
                <td><?php echo ($d["cate_name"]); ?></td>
                <td><?php echo ($d["title"]); ?></td>
                <td><?php echo (date('Y-m-d H:i:s',$d["pub_time"])); ?></td>
                <td>
                    <div class="button-group">
                        <a href="/myadmin.php/Home/Article/edit?id=<?php echo ($d["id"]); ?>" class="button border-main" ><span class="icon-edit"></span> 修改</a>
                        <a class="button border-red" href="javascript:void(0)" onclick="return del(<?php echo ($d["id"]); ?>,'/myadmin.php/Home/Article/del')"><span class="icon-trash-o"></span> 删除</a>
                    </div>
                </td>
            </tr><?php endforeach; endif; ?>

            <tr>
                <td colspan="5">
                    <div class="pagelist"><?php echo ($page); ?></div>
                </td>
            </tr>
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