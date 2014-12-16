<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-16
 * Time: 下午4:56
 * To change this template use File | Settings | File Templates.
 */

class LotteryModel extends Model{
    protected $_auto = array(
        //根据id生成无限极的父子关系
        array('add_time','time',1,'function'),
        array('status','1')
    );

    protected $_validate = array(
        array('name','require','栏目必须填!'),
    );

}