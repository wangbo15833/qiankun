<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-29
 * Time: 下午2:55
 * To change this template use File | Settings | File Templates.
 */
class OrdersAction extends BaseAction{
    // 检查用户是否登录


    protected function checkUser() {
        if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
            $this->error('没有登录','/User/Public/login');
        }
    }

    public function index(){
        $this->checkUser();
        $orderID=I('id');
        $db=M('Goods');
        $result=$db->where('id='.cookie('goodsid'))->find();
        $amount=$result['new_price']*cookie('goods_num');

        $db1=M('UserExpand');
        $address=$db1->where("userid=".session(C('USER_AUTH_KEY')))->getField('address');



        $this->assign('address',$address);
        $this->assign('amount',$amount);
        $this->assign('goods',$result);
        $this->assign('orderID',$orderID);
        $this->display();
    }

    public function insert(){
        $db=D('Orders');
        $db->create($_POST,1);
        $db->userid=$_SESSION[C('USER_AUTH_KEY')];
        $db->add();
        //$this->success('新增成功');
        $this->ajaxReturn('','新增成功',1);

    }
}