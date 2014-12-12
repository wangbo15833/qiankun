<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-26
 * Time: 下午4:46
 * To change this template use File | Settings | File Templates.
 */

class AndroidAction extends Action{
    public function test(){
        echo "Hello World";
    }
    public function index(){
        $req=I('req');
        switch($req){
            case '0102':
                $data['username']=I('username');
                $data['password']=I('password');
                $this->login($data);
                break;
        }
    }


    public function login($param){
        //生成认证条件
        $map=array();
        //支持使用绑定账号登录
        $map['account']=$param['username'];
        $map['status']=1;
        import("ORG.Util.RBAC");
        $authInfo=RBAC::authenticate($map);
        if(false==$authInfo){
            echo json_encode(array('status'=>0,'msg'=>'账号不存在或已禁用！'));
            //$this->error('账号不存在或已禁用！');
        }
        else{
            if($authInfo['password']!=md5($param['password'])){

                //$this->error('密码错误！');
                echo json_encode(array('status'=>0,'msg'=>'密码错误！'));
                exit;
            }
            $_SESSION[C('USER_AUTH_KEY')]=$authInfo['id'];
            $_SESSION['email']=$authInfo['email'];
            $_SESSION['loginUserName']=$authInfo['nickname'];
            $_SESSION['lastLoginTime']		=	$authInfo['last_login_time'];
            $_SESSION['login_count']	=	$authInfo['login_count'];
            $_SESSION['shopid']=$this->getMyshop($authInfo['id']);
            if($authInfo['account']=='admin') {
                $_SESSION['administrator']		=	true;
            }
            //保存登录信息
            $User	=	M('User');
            $ip		=	get_client_ip();
            $time	=	time();
            $data = array();
            $data['id']	=	$authInfo['id'];
            $data['last_login_time']	=	$time;
            $data['login_count']	=	array('exp','login_count+1');
            $data['last_login_ip']	=	$ip;
            $User->save($data);

            // 缓存访问权限
            RBAC::saveAccessList();
            echo json_encode(array('status'=>1,'user'=>$authInfo));
        }
    }

    public function getMyshop($oid){
        $db=M('Shop');
        $shopid=$db->where('owner='.$oid)->getField('id');
        if(!$shopid) $shopid=0;
        return $shopid;
    }
}