<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-7
 * Time: 下午3:56
 * To change this template use File | Settings | File Templates.
 */
class ShopAction extends CommonAction{
    protected $tableName='Shop';
    public function index(){
        $db=M($this->tableName);
        $shop=$db->table(C('DB_PREFIX').'shop S')->join(C('DB_PREFIX')."shop_category C ON S.category_id=C.id")->where('owner='.$_SESSION[C('USER_AUTH_KEY')])->field('*,S.id as id')->find();
        if(!$shop){
            $this->redirect(__URL__.'/add','页面跳转中');
        }
        $this->assign('shop',$shop);
        $this->display();
    }

    public function add(){
        $this->display();
    }
    public function insert(){
        if(IS_POST){
            $db=D($this->tableName);
            $db->create();
            $result=$db->add();
            if($result!=false){
                $this->success('新增成功','__URL__/index');
            }
            else{
                $this->error('新增失败');
            }
        }
    }

    public function edit(){
        $id=I('id');
        $db=M($this->tableName);
        $shop=$db->where('id='.$id)->find();
        $this->assign('shop',$shop);
        $this->display();

    }

    public function update(){
        if(IS_POST){
            $db=D($this->tableName);
            $db->create();
            $result=$db->save();
            if($result!=false){
                $this->success('更新成功','__URL__/index');
            }
            else{
                $this->error('更新失败');
            }
        }
    }
}