<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-13
 * Time: 下午4:10
 * To change this template use File | Settings | File Templates.
 */
class GoodsAction extends CommonAction{
    protected $tableName = 'Goods';
    public function index(){
        $db=M($this->tableName);
        $list=$db->where('shopid='.session('shopid'))->order('add_time desc')->select();
        $this->assign('list',$list);
        $this->display();
    }

    public function insert(){
        if(IS_POST){
            $db=D($this->tableName);
            $db->create();
            $info=$this->doUpload();
            if($info){
                $db->thumb_img=$info[0]['savename'];
            }
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
        $goods=$db->where('id='.$id)->find();
        if($goods['thumb_img']){
            $goods['thumb_img']="/Upload/Seller/".$goods['thumb_img'];
        }
        else{
            $goods['thumb_img']="/UI/Public/images/nopicture.jpg";
        }
        $this->assign('goods',$goods);
        $this->display();

    }

    public function update(){
        if(IS_POST){
            $db=D($this->tableName);
            $db->create();
            $info=$this->doUpload();
            if($info){
                $db->thumb_img=$info[0]['savename'];
            }else{
                unset($db->thumb_img);
            }
            $result=$db->save();
            if($result!=false){
                $this->success('更新成功','__URL__/index');
            }
            else{
                $this->error('更新失败');
            }
        }
    }

    Public function doUpload(){
        import('ORG.Net.UploadFile');
        $upload=new UploadFile();
        $upload->maxSize=3145728;
        $upload->allowExts=array('jpg','gif','png','jpeg');
        $upload->savePath ='./Upload/seller/';
        if(!$upload->upload()){
            //return $upload->getErrorMsg();
            return false;
            exit;
        }else{
            $info=$upload->getUploadFileInfo();
            return $info;
            exit;
        }


    }

}