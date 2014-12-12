<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-14
 * Time: 上午8:34
 * To change this template use File | Settings | File Templates.
 */
class AreaAction extends CommonAction{
    protected $tableName = 'Area';
    public function index(){
        $pid=I('pid');
        if(!$pid) $pid=0;
        $db=M($this->tableName);
        $list=$db->where('pid='.$pid)->select();
        $this->assign('pid',$pid);
        $this->assign('list',$list);
        $this->display();
    }

    public function add(){
        $pid=I('pid');
        $this->assign('pid',$pid);
        $this->display();
    }

    public function insert(){
        $pid=I('pid');
        $db=D($this->tableName);
        $db->create();
        $db->add();
        $this->success('添加成功','__URL__/index/pid/'.$pid);
    }

    public function edit(){
        $id=I('id');
        $db=M($this->tableName);
        $result=$db->where('id='.$id)->find();
        $this->assign('result',$result);
        $this->display();

    }

    public function update(){
        $pid=I('pid');
        $db=D($this->tableName);
        $db->create();
        $db->save();
        $this->success('更新成功','__URL__/index/pid/'.$pid);

    }

    public function foreverdelete(){
        $id=I('id');
        $db=M($this->tableName);
        $pid=$db->where('id='.$id)->getField('pid');
        $result=$db->where('pid='.$id)->find();
        if(!$result){
            $db->where('id='.$id)->delete();
            $this->success('删除成功','__URL__/index/pid/'.$pid);
        }
        else{
            $this->error('该分类下有子分类，不能删除！','__URL__/index/pid/'.$pid);
        }

    }

}