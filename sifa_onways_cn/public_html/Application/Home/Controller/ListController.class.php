<?php
namespace Home\Controller;
use Think\Controller;
class ListController extends BaseController {
    public function __construct(){
        parent::__construct();
        $this->M_article = M("article");
    }

    public function index(){
        $catId = I("cid");
        $subMenu = $this->submenu($catId);
        $this->assign("submenu", $subMenu);

        $cateId = $subMenu[0]['id'];
        $condition['cate_id'] = $cateId;
        $Page = $this->pages( $this->M_article, $condition);
        $data = $this->M_article->where($condition)
            ->order('sort desc,pub_time desc,id desc')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();

        $this->assign("data", $data);
        $this->assign("curid", $cateId);

        $this->display("Index/list");
    }

    public function sublist(){
        $id = I('subid');
        $model = M("category");
        $pcate = $model->field("pid,model_name")->where( array('id'=>$id) )->find();

        $subMenu = $this->submenu($pcate['pid']);
        $this->assign("submenu", $subMenu);

        if($pcate['model_name'] == 'page'){
            $data = $this->M_article->where( array('cate_id'=>$id) )->find();
            $this->assign('data', $data );
            $this->assign("curid", $id);
            $this->assign("page", 1);
            $this->display("Show/index");
            exit;
        }

        $condition['cate_id'] = $id;
        $Page = $this->pages( $this->M_article, $condition);
        $data = $this->M_article->where($condition)
            ->order('sort desc,pub_time desc,id desc')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();

        $this->assign("data", $data);
        $this->assign("curid", $id);
        if($id == 24){
            $this->display("Index/list_appointment");
        }else{
            $this->display("Index/list");
        }

    }

    //|===============================================================
    //| 获取子分类
    private function submenu($pid){
        $model = M("category");
        $data = $model->field("id,name,pid,display")->where(array('pid'=>$pid))->select();
        //get_sql($model);
        return $data;
    }
	
	//|===============================================================
    //| 获取文章
	public function jsonList(){
		$id = I('id');
		$where['id'] = array('gt',$id);
		$data = $this->M_article->where($where)->select();
		 
		echo json_encode($data,JSON_UNESCAPED_UNICODE);		
	}


   
}