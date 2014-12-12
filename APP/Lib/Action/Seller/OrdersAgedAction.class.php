<?php

class OrdersAgedAction extends CommonAction{
    protected $tableName = 'Orders';
    public function index(){
        $db=M($this->tableName);
        $list=$db->where('is_grab=0 or is_grab='.session('shopid'))->select();

        $new_list=array();
        foreach($list as $Item){
            if($Item['is_grab']==0){
                $Item['OrderButton']="<a class='btn btn-primary' href='/Seller/OrdersAged/grab/id/".$Item['orderid']."'>抢单</a>";

            }
            else{
                if($Item['status']==1){
                    $Item['OrderButton']="<a class='btn btn-primary' href='/Seller/OrdersAged/deliver/id/".$Item['orderid']."'>发货</a>";
                }
                elseif($Item['status']==4 && !$Item['shop_rate_id']){
                    $Item['OrderButton']="<a class='btn btn-primary' href='/Seller/OrdersRate/add/orderid/".$Item['orderid']."'>评价买家</a>";
                }

            }
            $new_list[]=$Item;
        }

        $this->assign('list',$new_list);
        $this->display();
    }

    //后期改进这个地方需要加锁
    public function grab(){
        $orderid=I('id');
        $db=M($this->tableName);
        $result=$db->where('orderid='.$orderid)->setField('is_grab',session('shopid'));
        if($result){
            $this->success('抢单成功','/Seller/OrdersAged/index');
        }
        else{
            $this->error('抢单失败','/Seller/OrdersAged/index');
        }

    }

    //进行发货操作
    public function deliver(){
        $orderid=I('id');
        $db=M($this->tableName);
        $result=$db->where('orderid='.$orderid)->setField('status',3);
        if($result){
            $this->success("发货操作成功","__URL__/index");
        }
        else{
            $this->error("发货操作失败","__URL__/index");
        }
    }

}