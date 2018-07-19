<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>社区矫正自助一体机</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/css/style.css"/>
    <script src="/Public/js/jquery-1.9.1.min.js"></script>
</head>



<div class="listbg">
    <div class="back">
        <a href="<?php echo u('index/appointment');?>"> <img src="/Public/img/back.jpg"/> </a>
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

        <div class="stat">
            <img src="/Public/img/succ.jpg" />
        </div>
    </div>
</div>

<script type="text/javascript" src="/Public/js/appointment.js"></script>

</body>
</html>