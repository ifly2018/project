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
<form method="post" action="/myadmin.php/Home/Appointment/del?all=1">
    <div class="panel admin-panel">
       <?php if($data == null): ?><div style="line-height: 100px; text-align: center">暂无预约信息</div>
        <?php else: ?>
        <table class="table table-hover text-center">
            <tr>
                <th width="120">ID</th>
                <th>姓名</th>
                <th>电话</th>
                <th>问题</th>
                <th>年龄</th>
                <th>预约人</th>
                <th>申请时间</th>
                <th>操作</th>
            </tr>

            <?php if(is_array($data)): foreach($data as $key=>$d): ?><tr id="list<?php echo ($d["id"]); ?>">
                <td><?php echo ($d["id"]); ?></td>
                <td><?php echo ($d["name"]); ?> <?php if($d["sex"] == 1): ?>先生<?php else: ?>女士<?php endif; ?></td>
                <td><?php echo ($d["tel"]); ?></td>
                <td><?php echo ($d["content"]); ?></td>
                <td><?php echo ($d["age"]); ?></td>
                <td><?php echo ($d["mem_name"]); ?></td>
                <td><?php echo (date('Y-m-d H:i:s',$d["time"])); ?></td>
                <td id="stat<?php echo ($d["id"]); ?>">
                    <div class="button-group" id="g<?php echo ($d["id"]); ?>">
                        <?php if($d["status"] == 0): ?><a onclick="dodeal(<?php echo ($d["id"]); ?>)">处理</a><?php endif; ?>
                    </div>
                </td>
            </tr><?php endforeach; endif; ?>

            <tr>
                <td colspan="8">
                    <div class="pagelist"><?php echo ($page); ?></div>
                </td>
            </tr>
        </table><?php endif; ?>
    </div>
</form>
<script type="text/javascript">
    function dodeal(id) {
        var url = "/myadmin.php/Home/Appointment/deal";
        $.post(url,{id:id},function (ret) {
            if(ret.status == 1){
                $("#list" + id).remove();
            }
        });
    }
</script>
</body>
</html>