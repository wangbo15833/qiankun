<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-19
 * Time: 下午2:51
 * To change this template use File | Settings | File Templates.
 */

class McardAction extends CommonAction{
    protected $tableName="Mcard";
    public function index(){
        $db=M($this->tableName);
        $list=$db->where("tel=".session('tel'))->select();
        $this->assign("list",$list);
        $this->display();
    }
}