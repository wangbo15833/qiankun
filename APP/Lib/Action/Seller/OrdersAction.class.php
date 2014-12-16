<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-5
 * Time: 上午10:23
 * To change this template use File | Settings | File Templates.
 */

class OrdersAction extends CommonAction{
    protected $tableName = 'Orders';
    public function index(){
        $db=M($this->tableName);
        import('ORG.Util.Page');
        $count=$db->where('userid='.$_SESSION[C('USER_AUTH_KEY')])->count();
        $Page=new Page($count,8);
        $show=$Page->show();
        $list=$db
            ->table(C('DB_PREFIX').'orders O')
            ->join(C('DB_PREFIX')."goods G ON O.goodsid=G.id")
            ->where('G.shopid='.$_SESSION['shopid'])
            ->field('*,O.status as status')
            ->order('O.create_time')
            ->limit($Page->firstRow.','.$Page->listRows)->select();

        $new_list=array();
        foreach($list as $Item){
            if($Item['status']==1&&$Item['paytype']=='hdfk'){
                $Item['OrderButton']="<a class='btn btn-primary' href='/Seller/Orders/deliver/id/".$Item['orderid']."'>发货</a>";
                $new_list[]=$Item;
            }

            elseif($Item['status']==1&&$Item['paytype']!='hdfk'){
                $Item['OrderButton']="等待付款";
                $new_list[]=$Item;
            }
            elseif($Item['status']==2){
                $Item['OrderButton']="<a class='btn btn-primary' href='/Seller/Orders/deliver/id/".$Item['orderid']."'>发货</a>";
                $new_list[]=$Item;
            }
            elseif($Item['status']==3){
                $Item['OrderButton']="等待收货";
                $new_list[]=$Item;
            }
            elseif($Item['status']==4&&!$Item['shop_rate_id']){
                $Item['OrderButton']="<a class='btn btn-primary' href='/Seller/OrdersRate/add/orderid/".$Item['orderid']."'>评价买家</a>";
                $new_list[]=$Item;
            }
            elseif($Item['status']==4&&$Item['shop_rate_id']){
                $Item['OrderButton']="已评价";
                $new_list[]=$Item;
            }
            else{
                $new_list[]=$Item;
            }

        }

        $this->assign('list',$new_list);
        $this->assign('page',$show);
        $this->display();

    }

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