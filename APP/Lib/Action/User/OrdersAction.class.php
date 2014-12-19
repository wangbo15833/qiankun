<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-2
 * Time: 下午4:25
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
            ->where('O.userid='.$_SESSION[C('USER_AUTH_KEY')])
            ->field('*,O.status as status,O.info as info')
            ->order('O.create_time desc')
            ->limit($Page->firstRow.','.$Page->listRows)->select();

        $new_list=array();
        foreach($list as $Item){
            switch($Item['status']){
                case '1':
                    if($Item['paytype']=="hdfk" || $Item['paytype']=="aged"){
                        $Item['OrderButton']="等待收货";
                    }
                    else{

                        $Item['OrderButton']="<a class='btn btn-primary' href='__URL__/pay/id/".$Item['orderid']."'>付款</a>";
                    }
                    $new_list[]=$Item;
                    break;
                case '3':
                    $Item['OrderButton']="<a class='btn btn-primary' href='__URL__/confirm_goods/id/".$Item['orderid']."'>确认收货</a>";
                    $new_list[]=$Item;
                    break;
                case '4':
                    if(!$Item['user_rate_id']){
                        $Item['OrderButton']="<a class='btn btn-primary' href='__GROUP__/OrdersRate/add/orderid/".$Item['orderid']."'>评价订单</a>";
                    }
                    else{
                        $Item['OrderButton']="已评价";
                    }

                    $new_list[]=$Item;
                    break;
                default:
                    $new_list[]=$Item;

            }

        }

        $this->assign('list',$new_list);
        $this->assign('page',$show);
        $this->display();
    }


    public function confirm_goods(){
        $orderid=I('id');
        $db=M('Orders');
        $result=$db->where("orderid=".$orderid)->setField('status',4);
        $orders=$db->where("orderid=".$orderid)->find();
        $jf=floor($orders['amount']);
        $db1=M('Mcard');
        $result1=$db1->where("tel=".$orders['phone']." and shopid=".$orders['shopid'])->setInc('jf',$jf);
        if($result&&$result1){
            $this->success("确认成功","__URL__/index");
        }
        else{
            $this->error("确认失败");
        }
    }

}