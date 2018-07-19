<?php
//|=======================================================================
//| 单网页
//|=======================================================================
namespace Home\Controller;
use Think\Controller;
class PageController extends CommonController {
    public function __construct(){
        parent::__construct();

        $this->M = M("article");
    }

    //|=======================================================================
    //| 列表
    public function index(){
        $id = I("id");
		
        $data = $this->M->where( array('cate_id'=>$id) )->find();
        $this->assign('data',$data);

        $this->assign('cateid',$id);
		
	
		
        $this->display();
    }

    //|=======================================================================
    //| 添加
    public function add(){
        $cateid = I("cate_id");
        $result = $this->M->where( array('cate_id'=>$cateid) )->find();


        $data = $this->M->create();
        $data['content'] = $_POST['content'];
        $data['desc'] = msubstr(strip_tags($_POST['content']),0,300);
        $data['pub_time'] = time();

        if( empty($result) ){
            $result = $this->M->add($data);
        }
        else{
            $id = $result['id'];
            $result = $this->M->where( array('id'=>$id) )->save($data);

        }
        $this->redirect('Page/index', array('id' => $cateid), 0, '页面跳转中...');
    }
 


}