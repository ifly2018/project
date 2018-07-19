<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>司法干警自助一体机</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/css/style.css"/>
    <script src="/Public/js/jquery-1.9.1.min.js"></script>
</head>


<link rel="stylesheet" type="text/css" href="/Public/css/scroll.css"/>
<div class="listbg">
    <div class="back">
        <a href="javascript:history.go(-1);"> <img src="/Public/img/back.jpg"/> </a>
    </div>

    <div class="list-wap">
        <div class="list-tab">
            <?php if($data["cate_id"] != 26): ?><ul id="tab">
                <?php if(is_array($submenu)): foreach($submenu as $key=>$menu): ?><a href="<?php echo u('list/sublist', array('subid'=>$menu['id']) );?>">
                        <li <?php if($curid == $menu['id']): ?>class="current"<?php endif; ?>><?php echo ($menu["name"]); ?></li>
                    </a><?php endforeach; endif; ?>
            </ul><?php endif; ?>
        </div>


        <div class="content-wrap">
            <h2><?php echo ($data["title"]); ?></h2>
            <div class="content" >
                <?php echo ($data["content"]); ?>
            </div>
        </div>
        <div style="height: 30px"></div>
        <?php if($page == null): ?><div class="pages">
            <a href="<?php echo u('show/index', array('id'=>$prev['id']) );?>" class="fl">上一篇</a>
            <a href="<?php echo u('show/index', array('id'=>$next['id']) );?>" class="fr">下一篇</a>
        </div><?php endif; ?>
    </div>


</div>
<script src="/Public/js/tab.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>