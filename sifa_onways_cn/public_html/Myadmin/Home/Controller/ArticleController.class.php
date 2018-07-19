<?php
//|=======================================================================
//| 文章
//|=======================================================================
namespace Home\Controller;
use Think\Controller;
class ArticleController extends ArticlecomController {
    public function __construct(){
        parent::__construct();

        $this->assign( 'category', $this->category() );
    }

    //|=======================================================================
    //| 列表
    public function index(){
        $article = $this->lists();
        $this->assign( 'data', $article);

        $this->display();
    }

    //|=======================================================================
    //| 添加
    public function add(){
        $this->display();
    }
    public function insert(){
        $data = $this->M_article->create();
        $data['content'] = $_POST['content'];
        $data['desc'] = msubstr(strip_tags($_POST['content']),0,300);
        $data['pub_time'] = time();
        if(!empty($_FILES['thumb']) && $_FILES['thumb']['name'] != ''){
            $data['thumb']    = $this->uploadImg($_FILES['thumb']);
        }
        $result = $this->M_article->add($data);
        $this->redirect('Article/index');
    }
    //|=======================================================================
    //| 编辑
    public function edit(){
        $id = I('id');
        $data = $this->M_article->where( array('id'=>$id) )->find();
        //$data['content'] = stripslashes($_POST['content']);
        $this->assign( 'data', $data);
        $this->display();
    }
    public function save(){
        $data = $this->M_article->create();
        $data['content'] = $_POST['content'];
        $data['desc'] = msubstr(strip_tags($_POST['content']),0,300);
        if(!empty($_FILES['thumb']) && $_FILES['thumb']['name'] != ''){
            $data['thumb']    = $this->uploadImg($_FILES['thumb']);
        }

        $id = $data['id'];
        $result = $this->M_article->where( array('id'=>$id) )->save($data);
        $this->redirect('Article/index');
    }

    //|=======================================================================
    //| 删除
    public function del(){

        $id = I('id');
        if( $this->M_article->where( array('id'=>$id) )->delete() )
            out_json('', '1');
        else
            out_json('', '0');


    }

    //|=======================================================================
    //| 搜索
    public function search(){
        $type     = I('type');
        $keywords = I('keywords');

        $params['cate_id'] = $type;
        if( empty($keywords) ){
            $this->assign( 'data', $this->lists($params));
            $this->display('index');
            exit;
        }
        else{
            $params['title']   = $keywords;
            $this->assign( 'data', $this->lists($params));
            $this->display('index');
        }
    }

    //|=======================================================================
    private function lists($search=''){
        if( empty($search) ){
            $Page = $this->pages( $this->M_article);
            $data = $this->M_article->order('sort desc,pub_time desc,id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        }else{
            $Page = $this->pages( $this->M_article);
            $data = $this->M_article->where($search)
                ->order('sort desc,pub_time desc,id desc')
                ->limit($Page->firstRow.','.$Page->listRows)
                ->select();
        }

        foreach ($data as $k=>$v){
            $cate = $this->M_article_cate->where( array('id'=>$v['cate_id']) )->find();
            $data[$k]['cate_name'] = $cate['name'];
        }

        return $data;
    }
}