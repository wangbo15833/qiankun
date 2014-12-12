<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-5
 * Time: 下午8:32
 * To change this template use File | Settings | File Templates.
 */

class OrdersAgedAction extends BaseAction{
    protected $tableName='Orders';
    public function index(){
        echo "请等待商家发货";
    }
    public function insert(){
        $db=M($this->tableName);
        $db->create();
        $db->create_time=time();
        $db->status=1;
        $db->orderid=$db->create_time.rand(1000,9999);
        $db->userid=session(C('USER_AUTH_KEY'));
        $db->is_grab=0;
        $result=$db->add();

        /*
        import('ORG.Util.Socket');
        $Socket=new Socket();
        if($Socket->connect()){
            $in = array('req'=>'0103','uid'=>2,'content'=>$_POST['content']);
            $buffer = json_encode($in);
            $total_length= 4+strlen($buffer);
            $buffer_new=pack('N',$total_length).$buffer;
            $Socket->write($buffer_new);

        }else{
            echo "TP类 创建Socket链接失败！<hr>";
        }
        //$read = $Socket->read();
        //$read 是服务端还回的数据
        //echo $read."<hr >";
        $Socket->disconnect();
        */

        if($result){
            $this->success('发布成功','__URL__/index');
        }
        else{
            $this->error('发布失败');
        }


    }
}