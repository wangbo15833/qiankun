<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-1
 * Time: 下午8:51
 * To change this template use File | Settings | File Templates.
 */
class CityAction extends Action{
    public function index(){
        $this->display();
    }
    public function change(){
        $id=I('id');
        cookie('area',$id);
        $this->success('切换城市中','/Index');
    }
}