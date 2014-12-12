<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-10
 * Time: 下午3:51
 * To change this template use File | Settings | File Templates.
 */

class ShopModel extends Model{
    protected $_auto = array(
        //根据id生成无限极的父子关系
        array('owner','getUserID',1,'callback'),
        array('add_time','time',1,'function'),
        array('update_time','time',3,'function')
    );

    protected $_validate = array(
        array('shopname','require','栏目必须填!'),
    );

    protected function getUserID(){
        return $_SESSION[C('USER_AUTH_KEY')];
    }

}