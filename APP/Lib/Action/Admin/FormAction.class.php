<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-10-29
 * Time: 下午4:56
 * To change this template use File | Settings | File Templates.
 */
class FormAction extends CommonAction{
    //过滤查询字段
    function _filter(&$map){
        if(!empty($_POST['name'])) {
            $map['title'] = array('like',"%".$_POST['name']."%");
        }
    }
}