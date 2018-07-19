<?php
//|==================================================
//| 预约处理
//|==================================================
namespace Home\Controller;
use Think\Controller;
class AppointmentController extends CommonController {
    public function __construct(){
        parent::__construct();
        $this->M = M("appointment");
    }

    public function index(){
        $Page = $this->pages( $this->M);
        $data = $this->M->order('status asc,id desc')
                ->limit($Page->firstRow.','.$Page->listRows)
                ->select();
        $this->assign( 'data', $data);
        $this->display();
    }

    public function undeal(){
        $condition['status'] = 0;
        $Page = $this->pages( $this->M, $condition);
        $data = $this->M->where($condition)
                ->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign( 'data', $data);
        $this->display();
    }

    public function deal(){
        $where['id'] = I("id");
        $condition['status'] = 1;

        $result = $this->M->where($where)->save($condition);
        if ($result){
            $this->success("更改成功");
        }
        else{
            $this->error("更改失败");
        }
    }
}