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
// json 返回数据
function out_json($data,$state='1',$msg='请求成功',$call=0){
    $result['state'] = $state;
    $result['msg']   = $msg;
    $result['data']  = ($data == '' || empty($data)) ? null : $data;

    if($call == 1){
        $result['postParam']  = empty($_POST) ? null : $_POST;
    }

    header('Content-type: application/json;charset=utf-8');
    echo json_encode($result,JSON_UNESCAPED_UNICODE);
    exit;
}

// 判断数据是否为空
function is_empty($data,$msg='暂无数据'){
    if(empty($data) || $data == ''){
        out_json('','0',$msg,1);
    }
}
// 随机数
function create_random($length){
    $str = '0123456789';
    $strlen = 10;
    while($length > $strlen){
        $str .= $str;
        $strlen += 10;
    }
    $str = str_shuffle($str);
    return substr($str,0,$length);
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
// 写入配置文件
function writeArr($arr, $filename) {
    return file_put_contents($filename, "<?php\r\nreturn " . var_export($arr, true) . ";");
}








//********弹出alert框并跳转到指定页面******//
function alert($message,$url='',$isAlert=true,$title='提示'){
    echo '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>',$title,'</title></head><body>';
    echo '<script type="text/javascript">';
    echo $isAlert?'alert("'.$message.'");':'';
    echo $url==''?'history.back();':'location.href="'.$url.'";';
    echo '</script>';
    echo '</body></html>';
    exit();
}

function skip($url){
    header("Location: " . $url);
    exit;

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