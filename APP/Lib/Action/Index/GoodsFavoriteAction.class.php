<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-11
 * Time: 上午9:52
 * To change this template use File | Settings | File Templates.
 */

class GoodsFavoriteAction extends BaseAction{
    protected $tableName = 'GoodsFavorite';
    public function insert(){
        $goodsid=I('goodsid');
        $db=M($this->tableName);
        $data['goodsid']=$goodsid;
        $data['uid']=$_SESSION[C('USER_AUTH_KEY')];
        $data['add_time']=time();
        $db->add($data);
        $result['error']=0;

        $this->ajaxReturn($result);

    }
}