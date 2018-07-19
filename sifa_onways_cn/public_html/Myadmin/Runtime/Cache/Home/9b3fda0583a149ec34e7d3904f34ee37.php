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
    <li><a href="<?php echo U('Index/info');?>" target="right" class="icon-home">基本设置</a></li>
    <li>添加文章</li>
</ul>

<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 添加文章</strong></div>
    <div class="body-content">

        <form method="post" class="form-x" action="/myadmin.php/Home/Article/insert" enctype="multipart/form-data" >

            <div class="form-group">
                <div class="label"><label>分类：</label></div>
                <div class="field">
                    <select name="cate_id" class="input w50">
                        <?php if(is_array($category)): foreach($category as $key=>$cate): ?><option value="<?php echo ($cate["id"]); ?>"><?php echo ($cate["html"]); echo ($cate["name"]); ?></option><?php endforeach; endif; ?>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <div class="label"> <label>标题：</label> </div>
                <div class="field"> <input type="text" class="input" name="title" value="" /> </div>
            </div>

            <div class="form-group">
                <div class="label">  <label>内容：</label> </div>
                <div class="field">
                    <script id="editor" name="content" type="text/plain" style="width:100%;height:300px;"></script>
                </div>
            </div>

            <div class="form-group">
                <div class="label"> <label>缩略图：</label> </div>
                <div class="field"><input type="file" name="thumb" id="file0" multiple="multiple" /></div>
            </div>

            <div class="form-group" id="thumb" style="display: none;">
                <div class="label"> <label></label> </div>
                <div class="field"> <img src="" id="img0" style="width: 150px; height: auto;"> </div>
            </div>


            <div class="form-group">
                <div class="label"> <label>排序：</label> </div>
                <div class="field"> <input type="text" class="input w50" name="sort" value="0" /> </div>
            </div>



            <div class="form-group">
                <div class="label"><label></label> </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">添 加</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>

<script type="text/javascript" charset="utf-8" src="/Myadmin/Home/vendor/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/Myadmin/Home/vendor/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="/Myadmin/Home/vendor/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor('editor');
</script>

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