<?php
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function __construct(){
        parent::__construct();
        $this->pageSize = C('PAGESIZE');
        $this->assign( 'site', $this->site() );  // 配置信息
    }

    //| ============================================
    //| 获取配置信息
    public function site(){
        $data = include './config/web.php';
        return $data;
    }


    //寻找父级栏目id
    public function get_top_parentid($id){
        $r =  $this->M_cate->where('id = '.$id)->field('id,pid')->find();
        if($r['pid'] != '0') return $this->get_top_parentid($r['pid']);
        return $r['id'];
    }
    //获取子栏目
    public function get_subnav($pid){
        $data =  $this->M_cate->where('pid = '.$pid)->order('sort asc,id asc')->select();
        return $data;
    }
    // 获取子栏目id
    public function get_all_subid($pid){
        $data =  $this->M_cate->field('id,pid')->where('pid = '.$pid)->order('sort asc,id asc')->select();
        $str = '';
        foreach ($data as $k=>$v){
            $str .= $v['id'] . ',';
        }
        $str = substr($str, 0, -1);
        return $str;
    }
    //获取顶级栏目信息
    public function top_navs($pid){
        $cate = $this->M_cate->field('id,name,pid')->where(array('id'=>$pid))->find();
        return $cate;
    }


    //|=======================================================================
    //| 分页
    public function pages($model,$cond=array()){
		if($cond['cate_id'] == 24){
			$pagesize = 3;
		}else{
			$pagesize = $this->pageSize;
		}
		
        if(count($cond) > 0){
            $count = $model->where($cond)->count();
            $Page  = new \Think\Page($count,$pagesize);

            foreach($cond as $key=>$val) {
                $Page->parameter[$key]   =   urlencode($val);
            }
        }
        else{
            $count = $model->count();
            $Page  = new \Think\Page($count,$pageSize);
        }

        $show = $Page->show();

        $this->assign('page', $show);
        $this->assign('pagetotal', $count);

        return $Page;
    }


    //| ============================================
    //| 获取子栏目
    public function downNav($pid){
        $cur = $this->M_cate->field('id,name,pid')->where(array('id'=>$pid))->find();
        $data['nav'] = $this->M_cate->where(array('pid'=>$pid))->order('sort desc,id asc')->select();
        $data['curname'] = $cur['name'];
        return $data;
    }
    public function upNav($id){
        $nav = $this->M_cate->field('id,pid,name')->where(array('id'=>$id))->find();
        $pid = $nav['pid'];
        $data = $this->downNav($pid);
        return $data;
    }

    /**+=========================================================================================================
     *+ 上传图片
     * $_FILES['files']
     */
    public function uploadImg($upFileVal,$width='200',$height='200',$path='./Uploads/image/',$thumb='1'){
        $upload = new \Think\Upload();
        $upload->maxSize   = 3145728 ;
        $upload->exts      = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath  = $path;     // 设置附件上传根目录
        $basePath          = $path;

        // 上传单个文件
        $info   =   $upload->uploadOne($upFileVal);
        $result = array();
        if(!$info) {
            $result['error'] = $upload->getError();
            alert('图片上传失败');
        }else{
            $newFileName = $info['savepath'] . $info['savename'];
            if($thumb == '1'){
                $newFilePath = $basePath . $newFileName;
                $thumbImg = $this->createThumb($newFilePath,$newFileName,$width,$height,$basePath);

            }else{
                $thumbImg = $info['savepath'] . $info['savename'];
            }

            return $thumbImg;
        }
    }

    /**=========================================================================================================
     * 生成缩略图
     * @param $imgFilePath       图片地址
     * @param $thumbName         缩略图名称
     * @param string $width      缩略图宽度
     * @param string $height     缩略图高度
     * @param string $savePath   缩略图保存路径
     * @param int $type          缩略图类型 1等比例 2缩放填充 3居中裁剪 4左上角裁剪 5右下角裁剪 6固定尺寸
     * @return string            缩略图名称
     */
    public function createThumb($imgFilePath,$thumbName,$width='200',$height='200',$savePath='./Uploads/',$type=2){
        $saveThumbName = $this->createThumbName($thumbName,$width,$height);
        //$this->thumbType($type,$imgFilePath,$width,$height,$saveThumbName);
        $image = new \Think\Image();
        $image->open($imgFilePath);
        switch($type){
            case 1 :    // 等比例缩放类型
                $image->thumb($width, $height,\Think\Image::IMAGE_THUMB_SCALE)->save($savePath . $saveThumbName);
                break;
            case 2 :    // 缩放后填充类型
            default:
                $image->thumb($width, $height,\Think\Image::IMAGE_THUMB_FILLED)->save($savePath . $saveThumbName);
                break;
            case 3 :    // 居中裁剪类型
                $image->thumb($width, $height,\Think\Image::IMAGE_THUMB_CENTER)->save($savePath . $saveThumbName);
                break;
            case 4 :    // 左上角裁剪类型
                $thumb = $image->thumb($width, $height,\Think\Image::IMAGE_THUMB_NORTHWEST)->save($savePath . $saveThumbName);
                break;
            case 5 :    // 右下角裁剪类型
                $image->thumb($width, $height,\Think\Image::IMAGE_THUMB_SOUTHEAST)->save($savePath . $saveThumbName);
                break;
            case 6 :    // 固定尺寸缩放类型
                $image->thumb($width, $height,\Think\Image::IMAGE_THUMB_FIXED)->save($savePath . $saveThumbName);
                break;
        }
        return $saveThumbName;
    }
    // 生成缩略图名称
    public function createThumbName($thumbpath,$width='200',$height='200'){
        $prefix    = '.' . pathinfo($thumbpath, PATHINFO_EXTENSION);
        $prefixlen = '-' . strlen($prefix);
        $saveThumbName = substr($thumbpath,0,$prefixlen) . '_' . $width . '_' . $height . $prefix;

        return $saveThumbName;
    }

}