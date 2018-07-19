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
        <a href="<?php echo u('index/appointment');?>"> <img src="/Public/img/back.jpg"/> </a>
    </div>

    <div class="list-wap">
        <div class="list-tab">
            <ul id="tab">
                <a href="<?php echo u('list/sublist', array('subid'=>23) );?>">
                    <li style="width: 48.5%;">咨询流程</li>
                </a>
				<a href="<?php echo u('list/sublist', array('subid'=>24) );?>">
                <li class="current" style="width: 48.5%;">预约系统</li></a>
            </ul>
        </div>

        <div class="msg">

            <div class="msgparam">

                <div class="fl f22">您的称呼：</div>
                <div class="fl">
                    <input type="text" name="name" value="" class="input" placeholder="例如：陈先生" />
                    <span></span>
                </div>
            </div>

            <div class="msgparam">
                <div class="fl f22">您的年龄：</div>
                <div class="fl"> 
				<select name="age" style="height: 64px; border: 1px solid #d2d2d2; border-radius: 5px; color:#888; text-indent: 10px; width: 520px; font-size:32px;">
				 <?php echo ($age); ?>
				</select>
				
            </div>
            <div class="msgparam">
                <div class="fl f22">您的性别：</div>
                <div class="fl">
                    <input type="radio" name="sex" value="1" id="sex1" checked /><label for="sex1">男</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="sex" value="0" id="sex0" /><label for="sex0">女</label>
                </div>
            </div>
            <div class="msgparam">
                <div class="fl f22">您的手机号：</div>
                <div class="fl"> <input type="text" name="tel" value="" class="input" placeholder="请输入手机号" /> <span></span></div>
            </div>
            <div class="msgparam">
                <div class="fl f22">描述问题：</div>
                <div class="fl">
                    <textarea id="question" name="question" class="texts"></textarea><span></span>
                </div>
            </div>
            <div class="msgparam">
                <div class="fl f22"></div>
                <div class="fl">
                    <input type="hidden" name="url" value="<?php echo ($site["SITE_URL"]); ?>appointment-add" />
                    <input type="hidden" name="tourl" value="<?php echo ($site["SITE_URL"]); ?>appointment-succurl" />
                    <input type="hidden" name="errurl" value="<?php echo ($site["SITE_URL"]); ?>appointment-errurl" />
                    <input type="hidden" name="memid" value="<?php echo ($data["id"]); ?>" />
                    <input type="hidden" name="memname" value="<?php echo ($data["title"]); ?>" />
                    <button onclick="return sub();">立即预约</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/Public/js/appointment.js"></script>
</body>
</html>