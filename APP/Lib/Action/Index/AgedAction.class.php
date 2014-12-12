<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-5
 * Time: 上午11:47
 * To change this template use File | Settings | File Templates.
 */

class AgedAction extends BaseAction{
    protected function checkUser() {
        if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
            $this->error('没有登录','/User/Public/login');
        }
    }
    public function index(){
        cookie('is_aged',true);
        $this->checkUser();
        $db=M('User');
        $result=$db->table(C('DB_PREFIX').'user U')->join(C('DB_PREFIX').'user_expand UE ON U.id=UE.userid')->where('id='.session(C('USER_AUTH_KEY')))->find();

        $this->assign('user',$result);
        $this->display();
    }
}