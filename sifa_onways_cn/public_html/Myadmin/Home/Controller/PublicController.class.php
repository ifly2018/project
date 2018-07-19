<?php
//|========================================================
//| 登陆

namespace Home\Controller;
use Think\Controller;
class PublicController extends BaseController {

    public function __construct(){
        parent::__construct();
        $this->M_admin = M('admin');
    }

    //|========================================================================
    //| 登录
    public function login(){
        $this->display();
    }

    public function doLogin(){
        $name = I('name');
        $pwd  = I('password');

        $data = $this->M_admin->where( array('uname'=>$name) )->find();
        if( !empty($data) ){
            if( $data['pwd'] == md5($pwd) ){
                $_SESSION['admin'] = $data['uname'];

                $this->redirect('Index/index');
            }
            else{
                $this->error('密码错误');
            }
        }
        else{
            $this->error('用户名不存在');
        }
    }

    //|========================================================================
    //| 退出登录
    public function loginOut(){
        unset($_SESSION['admin']);
        session('admin',null);
        $this->redirect('Public/login','',0, '成功退出...');
    }

}