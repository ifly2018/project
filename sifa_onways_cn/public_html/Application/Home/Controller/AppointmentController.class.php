<?php
//|=======================================================
//| 预约
//|=======================================================

namespace Home\Controller;
use Think\Controller;
class AppointmentController extends BaseController {
    public function __construct(){
        parent::__construct();

    }

    public function index(){
        $id = I("id");
        $appoint = $this->appointInfo($id);
        $this->assign("data", $appoint);
        $this->assign("age", $this->getAge());
        $this->display();
    }
    //|==============================================================
    //| 预约
    public function add(){
        $name     = I("name");
        $tel      = I("tel");
        $question = I("quesion");
        $age      = I("age");
        $sex      = I("sex");
        $memid    = I("docid");
        $memname  = I("docter");

        $data = array(
            'name'     => $name,
            'content'  => $question,
            'tel'      => $tel,
            'age'      => $age,
            'sex'      => $sex,
            'mem_name' => $memname,
            'mem_id'   => $memid,
            'time'     => time()
        );
        if($name !='' || $question != '' || $memid != ''){
            $model = M("appointment");
            if( $model->add($data) ){
                $this->success('预约成功');
            }else{
                $this->error("预约失败");
            }
        }else{
            $this->error("预约失败");
        }
    }

    public function succurl(){
        $this->display('Appointment/succ');
    }
    public function errurl(){
        $this->display('Appointment/err');
    }
    //|==============================================================
    //| 获取预约的信息
    private function appointInfo($id){
        $model = M('article');
        $data = $model->where( array('id'=>$id) )->find();
        return $data;
    }
	
	 //|==============================================================
    //| 年龄
    private function getAge($min=1,$max=100){
        $str = '';
		for($i=$min;$i<=$max;$i++){
			if($i == 25){
				$str .= '<option value="' .$i.'" selected>'.$i.'</optioin>';
			}else{
				$str .= '<option value="$i">'.$i.'</optioin>';
			}
			
		}
        return $str;
    }



   
}