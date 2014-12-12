<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-5
 * Time: 下午10:04
 * To change this template use File | Settings | File Templates.
 */
class OrdersAgedModel extends Model{
    protected $_auto = array(
        array('create_time','time',1,'function'),
        array('orderid','generateOrderID','1','callback'),

    );

    protected $_validate = array(
        array('name','require','栏目必须填!'),
    );

    function generateOrderID(){
        $orderID=time().rand(1000,9999);
        return $orderID;
    }


}