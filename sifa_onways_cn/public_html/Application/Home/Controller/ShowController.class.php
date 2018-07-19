<?php
namespace Home\Controller;
use Think\Controller;
class ShowController extends BaseController {
    public function __construct(){
        parent::__construct();
        $this->M_article = M("article");
    }

    public function index(){
        $id = I('id');
        $data = $this->M_article->where(array('id'=>$id))->find();

        $model = M("category");
        $pidArr = $model->field("id,pid")->where(array('id'=>$data['cate_id']))->find();
        $subMenu = $this->submenu($pidArr['pid']);

        //上下篇 9 5 2
        $prevCondition = "id>$id AND cate_id='" .$data['cate_id'] . "'";
        $prev = $this->M_article->field('id')->where( $prevCondition )->limit(1)->find();
        $prevNext = "id<$id AND cate_id='" .$data['cate_id'] . "'";
        $next = $this->M_article->field('id')->where( $prevNext )->limit(1)->find();

        $this->assign("submenu", $subMenu);
        $this->assign('data', $data );
        $this->assign("curid", $pidArr['id']);
        $this->assign("prev", $prev);
        $this->assign("next", $next);

        $this->display();
    }

    //|===============================================================
    //| 获取子分类
    private function submenu($pid){
        $model = M("category");
        $data = $model->field("id,name")->where(array('pid'=>$pid))->select();
        //get_sql($model);
        return $data;
    }



}