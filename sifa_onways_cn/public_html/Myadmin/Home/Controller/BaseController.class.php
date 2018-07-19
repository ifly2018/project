<?php
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {
    //|=======================================================================
    public function __construct(){
        parent::__construct();
        $this->pageSize = C('PAGESIZE');
        $this->siteUrl = C('SITE_URL');

        $this->assign( 'site_url', $this->siteUrl );
    }

    //|=======================================================================
    //| 分页
    public function pages($model,$cond=array()){
        if(count($cond) > 0){
            $count = $model->where($cond)->count();
            $Page  = new \Think\Page($count,$this->pageSize);

            foreach($cond as $key=>$val) {
                $Page->parameter[$key]   =   urlencode($val);
            }
        }
        else{
            $count = $model->count();
            $Page  = new \Think\Page($count,$this->pageSize);
        }

        $show = $Page->show();

        $this->assign('page', $show);
        $this->assign('pagetotal', $count);

        return $Page;
    }
    //上传附件
    public function upattach($upFileVal){
        $arrays = array(
            'png','jpg','jpeg','gif','bmp',
            'flv','swf','mkv','avi','rm','rmvb','mpeg','mpg','ogg',
            'ogv','mov','wmv','mp4','webm','mp3','wav','mid',
            'rar','zip','tar','gz','z','bz2','cab','iso','doc',
            'docx','xls','xlsx','ppt','pptx','pdf','txt','md','xml'
        );
        $upload = new \Think\Upload();
        $upload->maxSize   = 3145728000000 ;
        $upload->exts      = $arrays;
        $upload->rootPath  = './Uploads/attach/'; // 设置附件上传根目录


        $info   =   $upload->uploadOne($upFileVal);
        if(!$info) {// 上传错误提示错误信息
            $result['error'] = $upload->getError();
            alert('附件上传失败：' .$result['error']);
        }else{// 上传成功 获取上传文件信息
            return $info['savepath'].$info['savename'];
        }
    }

    /**+=========================================================================================================
     *+ 上传图片
     * $_FILES['files']
     */
    public function uploadImg($upFileVal,$width='200',$height='200',$path='./Uploads/image/',$thumb='1',$pro='0'){
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
                if($pro=='1'){
                    $this->createThumb($newFilePath,$newFileName,72,55,$basePath);
                }

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