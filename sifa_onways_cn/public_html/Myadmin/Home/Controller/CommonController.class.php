<?php
namespace Home\Controller;
use Think\Controller;
class CommonController extends BaseController {
    //|=======================================================================
    public function __construct(){
        parent::__construct();
        $this->isLogin();

        $pageNav = $this->pageNav();
        $this->assign('pagenav', $pageNav);
        
    }



    //|=======================================================================
    //| 登录判断
    public function isLogin(){
        $sessionName = $_SESSION['admin'];
        if( empty($sessionName) ){
            $this->redirect('Public/login');
        }
    }

    //|=======================================================================
    //| 单网页
    public function pageNav(){
        $model = M('category');
        $data =  $model->where( array('model_name'=>'page') )->select();
        return $data;
    }







}