<?php
//|=======================================================================
//| 文章栏目
//|=======================================================================
namespace Home\Controller;
use Think\Controller;
class ArticlecategoryController extends ArticlecomController {
    public function __construct(){
        parent::__construct();

        $this->assign( 'category', $this->category() );
    }

    public function index(){

        $this->display();
    }

    //|=======================================================================
    //| 添加
    public function add(){ $this->display();  }
    public function insert(){
        $data = $this->M_article_cate->create();
        $data['model'] = '1';
        //$data['model_name'] = 'category';

        $result = $this->M_article_cate->add($data);
        $this->redirect('Articlecategory/index');
    }

    //|=======================================================================
    //| 编辑
    public function edit(){
        $id = I('id');
        $data = $this->M_article_cate->where( array('id'=>$id) )->find();

        $this->assign('data', $data);
        $this->display();
    }
    public function save(){
        $data = $this->M_article_cate->create();
        $data['model'] = '1';
        //$data['model_name'] = 'category';
        $id = $data['id'];

        $result = $this->M_article_cate->where( array('id'=>$id) )->save($data);
        $this->redirect('Articlecategory/index');
    }

    //|=======================================================================
    //| 删除
    public function del(){
        $id = I('id');
        if( $this->M_article_cate->where( array('id'=>$id) )->delete() )
            out_json('', '1');
        else
            out_json('', '0');
    }

}