<?php
//|==================================================
//| 档案
//|==================================================
namespace Home\Controller;
use Think\Controller;
class DanganController extends CommonController {
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

    public function add(){
        $data = $this->getdoc();
        $this->assign( 'data', $data);
        $this->display();
    }
    public function insert(){
        $data = $this->M->create();
        $data['content'] = $_POST['content'];

        $doc  = M("article")->field('id,title')->where(array('id'=>$data['mem_id']))->find();
        $data['mem_name'] = $doc['title'];

        $result = $this->M->add($data);
        $this->redirect('Dangan/index');
    }

    //|=======================================================================
    //| 编辑
    public function edit(){
        $id = I('id');
        $data = $this->M->where( array('id'=>$id) )->find();
        $this->assign( 'data', $data);
        $this->assign( 'doc',  $this->getdoc());
        $this->display();
    }
    public function save(){
        $data = $this->M->create();
        $data['content'] = $_POST['content'];
        $doc  = M("article")->field('id,title')->where(array('id'=>$data['mem_id']))->find();
        $data['mem_name'] = $doc['title'];

        $id = $data['id'];
        $result = $this->M->where( array('id'=>$id) )->save($data);
        $this->redirect('Dangan/index');
    }

    private function getdoc(){
        $model = M("article");
        $data =$model->field('id,title')->where(array('cate_id'=>24))->select();
        return $data;
    }
}