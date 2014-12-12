<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-7
 * Time: 下午1:49
 * To change this template use File | Settings | File Templates.
 */

class OrdersModel extends Model{

    protected $_auto = array(
        //根据id生成无限极的父子关系
        array('create_time','time',1,'function'),
        array('status','1'),
        array('is_grab','-1')

    );

    protected $_validate = array(
        array('name','require','栏目必须填!'),
    );

}