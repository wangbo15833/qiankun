<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-17
 * Time: 上午9:33
 * To change this template use File | Settings | File Templates.
 */
class GoodsInshopCategoryAction extends CommonAction{
    protected $tableName='GoodsInshopCategory';
    public function index(){
        $db=M($this->tableName);
        $row=$db->where('shopid='.session('shopid'))->select();
        $list=tree($row, '0', 1);
        $this->assign('list',$list);
        $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        $db=D($this->tableName);
        $db->create();
        $db->add();
        $this->success('添加成功','__URL__/index');
    }

    public function edit(){
        $id=I('id');
        $db=M($this->tableName);
        $result=$db->where('id='.$id)->find();
        $this->assign('result',$result);
        $this->display();

    }

    public function update(){
        $db=D($this->tableName);
        $db->create();
        $db->save();
        $this->success('更新成功','__URL__/index');
    }


    public function foreverdelete(){
        $id=I('id');
        $db=M($this->tableName);
        $result=$db->where('pid='.$id)->find();
        if(!$result){
            $db->where('id='.$id)->delete();
            $this->success('删除成功','__URL__/index');
        }
        else{
            $this->error('该分类下有子分类，不能删除！','__URL__/index');
        }

    }
}