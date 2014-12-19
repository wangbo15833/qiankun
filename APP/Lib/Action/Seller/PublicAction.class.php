<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-10-31
 * Time: 上午9:19
 * To change this template use File | Settings | File Templates.
 */
class PublicAction extends CommonAction{
    // 检查用户是否登录


    protected function checkUser() {
        if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
            $this->error('没有登录','__GROUP__/Public/login');
        }
    }

    //后台顶部
    public function top(){
        $this->checkUser();
        C('SHOW_RUN_TIME',false);			// 运行时间显示
        C('SHOW_PAGE_TRACE',false);
        $model	=	M("Group");
        $list	=	$model->where('status=1')->getField('id,title');
        $this->assign('nodeGroupList',$list);
        $this->display();
    }

    public function drag(){
        $this->checkUser();
        C('SHOW_RUN_TIME',false);			// 运行时间显示
        C('SHOW_PAGE_TRACE',false);
        $this->display();
    }

    //管理页面底部
    public function footer(){
        $this->checkUser();
        C('SHOW_RUN_TIME',false);			// 运行时间显示
        C('SHOW_PAGE_TRACE',false);
        $this->display();
    }

    //后台面菜单
    public function menu(){
        $this->checkUser();
        if(isset($_SESSION[C('USER_AUTH_KEY')])) {
            //显示菜单项
            $menu  = array();
            if(isset($_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]])) {
                //如果已经缓存，直接读取缓存
                $menu   =   $_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]];


            }
            else {
                //读取数据库模块列表生成菜单项
                $node    =   M("Node");
                $id	=	$node->where("name='".GROUP_NAME."' and pid=0")->getField('id');
                $where['level']=2;
                $where['status']=1;
                $where['no_show']=0;
                $where['pid']=$id;
                $list	=	$node->where($where)->field('id,name,group_id,title')->order('sort asc')->select();
                if(isset($_SESSION['_ACCESS_LIST'])) {
                    $accessList = $_SESSION['_ACCESS_LIST'];
                }else{
                    import('ORG.Util.RBAC');
                    $accessList =   RBAC::getAccessList($_SESSION[C('USER_AUTH_KEY')]);
                }
                foreach($list as $key=>$module) {
                    if(isset($accessList[strtoupper(GROUP_NAME)][strtoupper($module['name'])]) || $_SESSION['administrator']) {
                        //设置模块访问权限
                        $module['access'] =   1;
                        $menu[$key]  = $module;
                    }
                }
                //缓存菜单访问
                $_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]]	=	$menu;
            }

            if(!empty($_GET['tag'])){
                $this->assign('menuTag',$_GET['tag']);
            }
            //dump($menu);
            $this->assign('menu',$menu);

        }
        C('SHOW_RUN_TIME',false);			// 运行时间显示
        C('SHOW_PAGE_TRACE',false);
        $this->display();
    }


    // 后台首页 查看系统信息
    public function main(){
        $this->checkUser();
        $info = array(
            '操作系统'=>PHP_OS,
            '运行环境'=>$_SERVER["SERVER_SOFTWARE"],
            'PHP运行方式'=>php_sapi_name(),
            'ThinkPHP版本'=>THINK_VERSION.' [ <a href="http://thinkphp.cn" target="_blank">查看最新版本</a> ]',
            '上传附件限制'=>ini_get('upload_max_filesize'),
            '执行时间限制'=>ini_get('max_execution_time').'秒',
            '服务器时间'=>date("Y年n月j日 H:i:s"),
            '北京时间'=>gmdate("Y年n月j日 H:i:s",time()+8*3600),
            '服务器域名/IP'=>$_SERVER['SERVER_NAME'].' [ '.gethostbyname($_SERVER['SERVER_NAME']).' ]',
            '剩余空间'=>round((@disk_free_space(".")/(1024*1024)),2).'M',
            'register_globals'=>get_cfg_var("register_globals")=="1" ? "ON" : "OFF",
            'magic_quotes_gpc'=>(1===get_magic_quotes_gpc())?'YES':'NO',
            'magic_quotes_runtime'=>(1===get_magic_quotes_runtime())?'YES':'NO',
        );
        $this->assign('info',$info);
        $this->display();
    }


    public function profile() {
        $this->checkUser();
        $User	 =	 M("User");
        $vo	=	$User->getById($_SESSION[C('USER_AUTH_KEY')]);
        $this->assign('vo',$vo);
        $this->display();
    }

    // 用户登录页面
    public function login() {
        if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
            $this->display();
        }else{
            $this->redirect('Index/index');
        }
    }

    public function index() {
        //如果通过认证跳转到首页
        redirect(__APP__);
    }


    //用户登出
    public function logout() {
        if(isset($_SESSION[C('USER_AUTH_KEY')])) {
            unset($_SESSION[C('USER_AUTH_KEY')]);
            unset($_SESSION);
            session_destroy();
            $this->success('登出成功！',__URL__.'/login/');
        }else {
            $this->error('已经登出！');
        }
    }


    //用户登录
    public function checkLogin(){
        if(empty($_POST['user'])){
            $this->error('账号错误！');
        }
        elseif(empty($_POST['pass'])){
            $this->error('密码必须！');
        }
        elseif(empty($_POST['verify'])){
            $this->error('验证码必须！');
        }
        //生成认证条件
        $map=array();
        //支持使用绑定账号登录
        $map['account']=$_POST['user'];
        $map['status']=1;

        if(session('verify') != md5($_POST['verify'])) {
            $this->error('验证码错误！');
        }

        import("ORG.Util.RBAC");
        $authInfo=RBAC::authenticate($map);
        if(false==$authInfo){
            $this->error('账号不存在或已禁用！');
        }
        else{
            if($authInfo['password']!=md5($_POST['pass'])){
                $this->error('密码错误！');
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
            $this->success('登录成功！',__GROUP__.'/Index/index');
        }

    }

    public function verify() {
        $type	 =	 isset($_GET['type'])?$_GET['type']:'gif';
        import("ORG.Util.Image");
        Image::buildImageVerify(4,1,$type);
    }


    // 更换密码
    public function changePwd() {
        $this->checkUser();
        //对表单提交处理进行处理或者增加非表单数据
        if(md5($_POST['verify'])	!= session('verify')) {
            $this->error('验证码错误！');
        }
        $map	=	array();
        $map['password']= pwdHash($_POST['oldpassword']);
        if(isset($_POST['account'])) {
            $map['account']	 =	 $_POST['account'];
        }elseif(isset($_SESSION[C('USER_AUTH_KEY')])) {
            $map['id']		=	$_SESSION[C('USER_AUTH_KEY')];
        }
        //检查用户
        $User    =   M("User");
        if(!$User->where($map)->field('id')->find()) {
            $this->error('旧密码不符或者用户名错误！');
        }else {
            $User->password	=	pwdHash($_POST['password']);
            $User->save();
            $this->success('密码修改成功！');
        }
    }

    // 修改资料
    public function change() {
        $this->checkUser();
        $User	 =	 D("User");
        if(!$User->create()) {
            $this->error($User->getError());
        }
        $result	=	$User->save();
        if(false !== $result) {
            $this->success('资料修改成功！');
        }else{
            $this->error('资料修改失败!');
        }
    }

    //获取省市县列表函数
    public function getAreaByPid(){
        $pid=I('param_id');
        $db=M('Area');
        $areas=$db->where('pid='.$pid)->select();
        $data['areas']=$areas;
        $data['error']=0;
        $this->ajaxReturn($data);
    }

    public function reg(){
        if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
            $this->display();
        }else{
            $this->redirect('Index/index');
        }
    }

    public function doReg(){
        if(md5($_POST['verify'])	!= session('verify')) {
            $this->error('验证码错误！');
        }
        if($_POST['password']!=$_POST['repass']){
            $this->error('密码确认错误');
        }
        $db=D('User');
        $db->create();
        $userid=$db->add();

        $role_user=M('role_user');
        $data['role_id']=2;
        $data['user_id']=$userid;
        $role_user->add($data);
        $this->success('注册成功','__URL__/login');
    }

    public function getMyshop($oid){
        $db=M('Shop');
        $shopid=$db->where('owner='.$oid)->getField('id');
        if(!$shopid) $shopid=0;
        return $shopid;
    }

    public function test(){
        $db=M('Category');
        $list=$db->select();
        $row=tree($list, '0', '');
        //dump($row);
        $this->assign('row',$row);
        $this->display();

    }

    //获取店铺内部类目列表
    public function getGoodsInshopCategoryList($shopid){
        $db=M('GoodsInshopCategory');
        $row=$db->where('shopid='.$shopid)->select();
        $list=tree($row, '0', 1);
        $data['list']=$list;
        $data['error']=0;
        $this->ajaxReturn($data);
    }


    //获取平台总体商品类目列表
    public function getGoodsCategoryList(){
        $db=M('GoodsCategory');
        $row=$db->select();
        $list=tree($row, '0', 1);
        $data['list']=$list;
        $data['error']=0;
        $this->ajaxReturn($data);
    }

    //获取店铺类目列表
    public function getShopCategoryList(){
        $db=M('ShopCategory');
        $row=$db->select();
        $list=tree($row, '0', 1);
        $data['list']=$list;
        $data['error']=0;
        $this->ajaxReturn($data);

    }
}