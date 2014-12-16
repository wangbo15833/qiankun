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
}