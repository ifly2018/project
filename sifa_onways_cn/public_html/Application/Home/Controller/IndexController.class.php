<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {
    public function __construct(){
        parent::__construct();
        $this->M_article = M("article");
    }

    public function index(){


        $this->display();
    }

    //|======================================================
    //| 预约
    public function appointment(){

        $this->display();
    }



   
}