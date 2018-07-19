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
                <?php if(is_array($submenu)): foreach($submenu as $key=>$menu): ?><a href="<?php echo u('list/sublist', array('subid'=>$menu['id']) );?>">
                        <li <?php if($curid == $menu['id']): ?>class="current"<?php endif; ?>><?php echo ($menu["name"]); ?></li>
                    </a><?php endforeach; endif; ?>
            </ul>
        </div>

        <div class="lists">
            <div id="tab1" class="list-class">
                <?php if(is_array($data)): foreach($data as $key=>$d): ?><div class="list">
                    <a href="<?php echo u('show/index', array('id'=>$d['id']) );?>">
                        <div class="list-left">
                            <?php if($d["thumb"] != null): ?><img src="/Public/img/<?php echo ($d["thumb"]); ?>" />
                            <?php else: ?>
                                <img src="/Public/img/tmp/t.jpg" /><?php endif; ?>
                        </div>
                        <div class="list-desc">
                            <h2><?php echo ($d["title"]); ?></h2>
                            <div class="list-desc-txt">
                                <?php echo (msubstr($d["desc"],0,56)); ?>...
                            </div>
                        </div>
                    </a>
                </div><?php endforeach; endif; ?>
            </div>
            <div class="page">
                <?php echo ($page); ?>
            </div>
        </div>
    </div>
</div>


<script src="/Public/js/tab.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>