<?php
$arr = array(
    'URL_MODEL'         =>  2,      // 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
    'URL_PATHINFO_DEPR' =>'-',
    'DEFAULT_CONTROLLER' => 'index',
    'URL_CASE_INSENSITIVE' =>true,

    'TMPL_CACHE_ON'  => true,         //禁止模板编译缓存
    'HTML_CACHE_ON'  => true,         //禁止静态缓存
);


$config = include './config/config.php';
$web    = include './config/web.php';
return array_merge($arr,$config,$web);