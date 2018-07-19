<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>司法干警自助一体机</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/css/style.css"/>
    <script src="/Public/js/jquery-1.9.1.min.js"></script>
</head>



<div class="listbg">
    <div class="back">
        <a href="<?php echo u('index/index');?>"> <img src="/Public/img/back.jpg"/> </a>
    </div>

    <div class="list-wap">
        <div class="list-tab">
            <ul id="tab">
                <a href="<?php echo u('list/sublist', array('subid'=>23) );?>">
                    <li style="width: 48.5%;">咨询流程</li>
                </a>

                <li class="current" style="width: 48.5%;">预约系统</li>

            </ul>
        </div>

        <div class="yuyue">

			<!--<a href="http://p.qiao.baidu.com/cps/chat?siteId=10374064&userId=23145856">	-->		
			<a onclick="return tall();">	
			<img class="online" src="/Public/img/online.jpg" border='0' />
			</a>
          
            <a href="<?php echo u('list/sublist', array('subid'=>24) );?>">
                <img src="/Public/img/yuyue.jpg" class="yuyue"/>
            </a>
        </div>

    </div>
</div>
<script>
function tall(){
	window.open('http://p.qiao.baidu.com/cps/chat?siteId=10590475&userId=23637612','newwindow','height=670,width=600');
}
</script>


</body>
</html>