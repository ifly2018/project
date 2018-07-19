<?php
$arr = array(
    'URL_MODEL'       =>  0,      // 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式

    'TMPL_CACHE_ON'  => false,  //禁止模板编译缓存
    'HTML_CACHE_ON'  => false,  //禁止静态缓存
    'ACTION_CACHE_ON'=> false,  // 默认关闭Action 缓存

    'TMPL_PARSE_STRING' => array(
        '__VIEWS__'  => __ROOT__ . '/Myadmin/Home/View/',
        '__STATIC__' => __ROOT__ . '/Myadmin/Home/View/Static/',
        '__JS__'     => __ROOT__ . '/Myadmin/Home/View/Static/js/',
        '__CSS__'    => __ROOT__ . '/Myadmin/Home/View/Static/css/',
        '__IMAGES__' => __ROOT__ . '/Myadmin/Home/View/Static/images/',
        '__VENPATH__'=> __ROOT__ . '/Myadmin/Home/vendor/',
    ),
);


$config = include './config/config.php';
$web    = include './config/web.php';
return array_merge($arr,$config,$web);