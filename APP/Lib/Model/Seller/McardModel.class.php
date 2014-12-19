<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-19
 * Time: 上午11:42
 * To change this template use File | Settings | File Templates.
 */
class McardModel extends Model{
    protected $_auto = array(
        //根据id生成无限极的父子关系
        array('add_time','time',1,'function'),
        //array('update_time','time',3,'function'),
    );

    protected $_validate = array(
        array('name','require','栏目必须填!'),
    );
}