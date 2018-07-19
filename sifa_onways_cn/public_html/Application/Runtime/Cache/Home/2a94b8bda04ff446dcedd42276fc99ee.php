<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>司法干警自助一体机</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/css/style.css"/>
    <script src="/Public/js/jquery-1.9.1.min.js"></script>
</head>



<div class="index">
    <a href="<?php echo u('list/index', array('cid'=>1) );?>" class="index-button knowledge"></a>
    <a href="<?php echo u('list/index', array('cid'=>2) );?>" class="index-button community"></a>
    <a href="<?php echo u('list/index', array('cid'=>3) );?>" class="index-button active"></a>
    <a href="<?php echo u('list/index', array('cid'=>4) );?>" class="index-button aid"></a>
    <a href="<?php echo u('list/index', array('cid'=>5) );?>" class="index-button sun"></a>
    <a href="<?php echo u('index/appointment');?>" class="index-button subscribe"></a>
    <a href="<?php echo u('list/sublist', array('subid'=>26) );?>" class="index-button" style=" width: 136px; height: 48px; bottom: 100px; right: 62px"></a>

	
	<a href="" class="close-win"></a>	
</div>

</body>
</html>