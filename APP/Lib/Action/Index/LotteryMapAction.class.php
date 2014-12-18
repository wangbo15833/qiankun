<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-18
 * Time: 下午3:10
 * To change this template use File | Settings | File Templates.
 */

class LotteryMapAction extends BaseAction{
    public function insert(){
        $db=M('LotteryMap');
        $data['lotteryid']=I('lotteryid');
        $data['userid']=session(C('USER_AUTH_KEY'));
        $data['add_time']=time();
        $data['number']=rand(1000,9999);
        $result=$db->add($data);
        if($result){
            $data1['error']=0;
        }
        else{
            $data1['error']=1;
        }
        $this->ajaxReturn($data1);
    }
}