<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-20
 * Time: 下午2:22
 * To change this template use File | Settings | File Templates.
 */

class CouponsMapAction extends CommonAction{
    public function index(){
        $db=M();
        $userlist=$db
            ->table(C('DB_PREFIX')."user U")
            ->join(C('DB_PREFIX')."role_user RU ON U.id=RU.user_id")
            ->where('role_id=3')
            ->select();

        $db1=M('Coupons');
        $couponslist=$db1->where('shopid='.session('shopid'))->select();

        $this->assign('couponslist',$couponslist);
        $this->assign("userlist",$userlist);
        $this->display();
    }

    public function index2(){
        $userlist=I('userlist');
        $data['coupons_id']=I('coupons');
        $db=M('CouponsMap');
        foreach($userlist as $key => $value){
            $data['userid']=$value;
            $result=$db->add($data);
            if(!$result){
                $this->error("发放错误");
            }
        }
        $this->success("发放成功","__URL__/index");

    }
}