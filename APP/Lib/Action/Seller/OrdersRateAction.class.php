<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-15
 * Time: 下午4:19
 * To change this template use File | Settings | File Templates.
 */

class OrdersRateAction extends CommonAction{
    protected $tableName="OrdersRate";
    public function add(){
        $orderid=I('orderid');
        $db=M('Orders');
        $result=$db->where('orderid='.$orderid)->find();
        $this->assign("orders",$result);
        $this->display();
    }

    public function insert(){
        $db=M($this->tableName);
        $db->create();
        $db->add_time=time();
        $result=$db->add();
        if($result){
            $db=M("Orders");
            $db->where("orderid=".$_POST['orderid'])->setField('shop_rate_id',$result);
            $this->success("评价成功","__GROUP__/Orders/index");
        }
        else{
            $this->error("评价失败");
        }

    }

    public function index(){
        $this->display();
    }
}