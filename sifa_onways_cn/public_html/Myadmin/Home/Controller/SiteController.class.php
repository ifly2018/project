<?php
//|=======================================================================
//| 网站基本设置
//|=======================================================================
namespace Home\Controller;
use Think\Controller;
class SiteController extends CommonController {
    public function __construct() {
        parent::__construct();

        $this->M_site = M('site');
    }

    public function index(){
        $data = $this->M_site->where(array('id'=>1))->find();
        $datas = array();
        foreach ($data as $k=>$v){
            $datas[strtoupper($k)] = $v;
        }
        $this->assign('data', $datas);
        $this->display();
    }

    public function save(){
        $data = $this->M_site->create();
        $this->M_site->where(array('id'=>1))->save($data);

        $WEB_PATH = './config/web.php';
        writeArr($data, $WEB_PATH);
        $this->redirect('Site/index');
    }
	
	public function updatePwd(){
		$this->display();
	}
	public function doUpdatePwd(){
		$old  = I('old');
		$new  = I('news');
		$agin = I('agin');
		
		if( $new != $agin ){
			out_json('', '0');
		}
		if($new == ''){
			out_json('', '5');
		}
		
		$model = M('admin');
		$data = $model->where( array('id'=>1) )->find();
		
		if( md5($old) != $data['pwd'] ){
			out_json('', '2');
		}
		
		$upArr = array(
			'pwd' => md5($new),
		);
		
		if( $model->where( array('id'=>1) )->save($upArr) ){
			out_json('', '1');
		}
		
	}
}