<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-16
 * Time: 下午3:54
 * To change this template use File | Settings | File Templates.
 */
class LotteryAction extends BaseAction{
    protected $tableName="Lottery";
    public function index(){
        $db=M($this->tableName);
        $list=$db
            ->where('id>0')
            ->order('add_time desc')
            ->select();
        $this->assign('list',$list);
        $this->display();
    }

    public function detail(){
        $id=I('id');
        $db=M($this->tableName);
        $result=$db
            ->where('id='.$id)
            ->find();
        $this->assign('result',$result);
        $this->display();
    }

    public function result(){
        $id=I('id');
        $db=M($this->tableName);
        $lottery_num=$db->where('id='.$id)->getField('number');
        $db1=M('LotteryMap');
        $res=$db1->where('lotteryid='.$id)->select();
        $new_res=array();
        foreach($res as $Item){
            if($Item['number']==$lottery_num){
                $new_res[]=$Item;
            }
        }

        $this->assign('luckyman',$new_res);
        $this->display();
    }
}