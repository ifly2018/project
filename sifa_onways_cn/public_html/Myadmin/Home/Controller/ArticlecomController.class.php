<?php
//|=======================================================================
//| 文章
//|=======================================================================
namespace Home\Controller;
use Think\Controller;
class ArticlecomController extends CommonController {
    public function __construct(){
        parent::__construct();
        $this->M_article      = M('article');
        $this->M_article_cate = M('category');
    }
    //|=======================================================================
    //| 栏目
    public function category(){
        $data =  $this->M_article_cate->where( array('model_name'=>'category') )->select();
        return tree($data);
    }

}