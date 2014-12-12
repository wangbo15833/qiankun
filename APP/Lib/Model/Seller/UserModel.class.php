<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-13
 * Time: 下午3:00
 * To change this template use File | Settings | File Templates.
 */
class UserModel extends Model{
    protected $_auto = array(
        array('status','0',1),
        array('password','pwdHash',3,'callback'),
        array('create_time','time',1,'function'),
        array('update_time','time',3,'function')
    );

    protected $_validate = array(
        array('account','/^[a-z]\w{3,}$/i','帐号格式错误'),
        array('password','require','密码必须'),
        array('nickname','require','昵称必须'),
        array('repassword','require','确认密码必须'),
        array('repassword','password','确认密码不一致',self::EXISTS_VALIDATE,'confirm'),
        array('account','','帐号已经存在',self::EXISTS_VALIDATE,'unique',self::MODEL_INSERT),
    );

    protected function pwdHash() {
        if(isset($_POST['password'])) {
            return pwdHash($_POST['password']);
        }else{
            return false;
        }
    }

}
