<?php
/*
 * 后台入口
 */
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');
define('APP_DEBUG', True);
define('APP_PATH', './Myadmin/');

define('CSS_PATH', './Myadmin/Home/View/Static/css/');
define('IMG_PATH', './Myadmin/Home/View/Static/images/');
define('JS_PATH', './Myadmin/Home/View/Static/js/');

require './ThinkPHP/ThinkPHP.php';