<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-11
 * Time: 上午9:06
 * To change this template use File | Settings | File Templates.
 */

class GoodsFavoriteAction extends CommonAction{
    protected $tableName = 'GoodsFavorite';
    public function index(){
        $db=M($this->tableName);
        $list=$db
            ->table(C('DB_PREFIX')."goods_favorite GF")
            ->join(C('DB_PREFIX')."goods G ON GF.goodsid=G.id")
            ->where('uid='.session(C('USER_AUTH_KEY')))
            ->field("*,GF.id as id,GF.add_time as add_time")
            ->order("GF.add_time desc")
            ->select();
        $this->assign('list',$list);
        $this->display();

    }

    public function foreverdelete(){
        $id=I('id');
        $db=M($this->tableName);
        $result=$db->where('id='.$id)->delete();
        if($result){
            $this->success('删除成功','__URL__/index');
        }
        else{
            $this->error("删除失败",'__URL__/index');
        }

    }
}