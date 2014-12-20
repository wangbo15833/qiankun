<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-20
 * Time: 下午1:57
 * To change this template use File | Settings | File Templates.
 */

class CouponsMapAction extends CommonAction{
    public function index(){
        $db=M();
        $list=$db
            ->table(C('DB_PREFIX')."coupons_map CM")
            ->join(C('DB_PREFIX')."coupons C ON CM.coupons_id=C.id")
            ->where('userid='.session(C('USER_AUTH_KEY')))
            ->select();
        $this->assign('list',$list);
        $this->display();
    }

    public function foreverdelete(){
        $id=I('id');
        $db=M('CouponsMap');
        $result=$db->where('coupons_id='.$id.' and userid='.session(C('USER_AUTH_KEY')))->delete();
        //echo $db->getLastSql();exit;
        if($result){
            $this->success("删除成功",'__URL__/index');
        }
        else{
            $this->error("非法操作！！");
        }
    }
}