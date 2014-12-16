<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-16
 * Time: 上午11:45
 * To change this template use File | Settings | File Templates.
 */

class OrdersRateC2sAction extends CommonAction{
    public function index(){
        $db=M('OrdersRate');
        $join=array(
            C('DB_PREFIX')."shop S ON ODR.shopid=S.id ",
            C('DB_PREFIX')."goods G ON ODR.goodsid=G.id ",
            C('DB_PREFIX')."orders O ON ODR.orderid=O.orderid"
        );
        $where=array('ODR.uid'=>session(C('USER_AUTH_KEY')),'type'=>"c2s");
        $list=$db
            ->table(C('DB_PREFIX')."orders_rate ODR")
            ->join($join)
            ->where($where)
            ->field('*,ODR.info as ODR_info,O.info as O_info')
            ->select();
        $this->assign('list',$list);
        $this->display();
    }
}