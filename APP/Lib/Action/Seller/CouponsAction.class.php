<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-20
 * Time: 上午10:28
 * To change this template use File | Settings | File Templates.
 */

class CouponsAction extends CommonAction{
    protected $tableName="Coupons";
    public function index(){
        $db=M($this->tableName);
        $list=$db
            ->where('shopid='.session('shopid'))
            ->order('add_time desc')
            ->select();
        $this->assign("list",$list);
        $this->display();
    }

    public function insert(){
        if(IS_POST){
            $db=D($this->tableName);
            $db->create();
            $result=$db->add();
            if($result){
                $this->success("添加成功","__URL__/index");
            }
            else{
                $this->error("添加失败");
            }

        }
    }
}