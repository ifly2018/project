<?php
//栏目树
function tree(&$list,$pid=0,$level=0,$html='─'){
    static $tree = array();
    $fixed = ($level=='0') ? '' : '└';
    $nbsp = ($level<'2') ? '' : str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;',$level);
    foreach($list as $v){
        if($v['pid'] == $pid){
            $v['sort'] = $level;
            $v['html'] = $nbsp . $fixed . str_repeat($html,$level);
            $tree[] = $v;

            tree($list,$v['id'],$level+1);
        }
    }
    return $tree;
}




/**
 * 截取中文字符串
 */
function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=false){
    if(function_exists("mb_substr")){
        if($suffix)
            return mb_substr($str, $start, $length, $charset)."...";
        else
            return mb_substr($str, $start, $length, $charset);
    }elseif(function_exists('iconv_substr')) {
        if($suffix)
            return iconv_substr($str,$start,$length,$charset)."...";
        else
            return iconv_substr($str,$start,$length,$charset);
    }

    $re['utf-8'] = "/[x01-x7f]|[xc2-xdf][x80-xbf]|[xe0-xef][x80-xbf]{2}|[xf0-xff][x80-xbf]{3}/";
    $re['gb2312'] = "/[x01-x7f]|[xb0-xf7][xa0-xfe]/";
    $re['gbk'] = "/[x01-x7f]|[x81-xfe][x40-xfe]/";
    $re['big5'] = "/[x01-x7f]|[x81-xfe]([x40-x7e]|xa1-xfe])/";
    preg_match_all($re[$charset], $str, $match);
    $slice = join("",array_slice($match[0], $start, $length));
    if($suffix) return $slice."…";
    return $slice;
}



// 输出sql 语句
function get_sql($Model){
    echo $Model->getLastSql();
    exit;
}

// 打印数据
function p($data){
    echo '<pre>';
    print_r($data);
    exit;
}





