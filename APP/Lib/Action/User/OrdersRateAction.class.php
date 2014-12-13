<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-12
 * Time: 上午11:52
 * To change this template use File | Settings | File Templates.
 */

class OrdersRateAction extends CommonAction{
    protected $tableName="OrdersRate";
    public function add(){
        $orderid=I('orderid');
        $this->assign("orderid",$orderid);
        $this->display();
    }

    public function insert(){
        $db=M($this->tableName);
        $db->create();
        $db->uid=session(C('USER_AUTH_KEY'));
        $db->add_time=time();
        $result=$db->add();
        if($result){
            $db=M("Orders");
            $db->where("orderid=".$_POST['orderid'])->setField('user_rate_id',$result);
            $this->success("评价成功","__GROUP__/Orders/index");
        }
        else{
            $this->error("评价失败");
        }

    }

    public function index(){
        echo "hello world";
    }
}