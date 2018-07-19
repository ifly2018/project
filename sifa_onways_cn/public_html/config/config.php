<?php
// +----------------------------------------------------------------------
// | 配置文件
// +----------------------------------------------------------------------
return array(



    /* 数据库设置 */
    'DB_TYPE'               =>  'mysql',       // 数据库类型
    'DB_HOST'               =>  'localhost',   // 服务器地址
    'DB_PORT'               =>  '3306',        // 数据库端口
    'DB_USER'               =>  'yitiji2',        // 用户名
    'DB_PWD'                =>  'ifly1129',        // 密码
    'DB_NAME'               =>  'yitiji2',  // 数据库名
    'DB_PREFIX'             =>  'f_',          // 数据库表前缀

    'DB_FIELDS_CACHE'       =>  true,          // 启用字段缓存
    'DB_CHARSET'            =>  'utf8',        // 数据库编码默认采用utf8
    'DB_DEPLOY_TYPE'        =>  0,             // 数据库部署方式:0 集中式(单一服务器),1 分布式(主从服务器)

    /* URL设置 */
    'URL_CASE_INSENSITIVE'  =>  true,          // 默认false 表示URL区分大小写 true则表示不区分大小写


);