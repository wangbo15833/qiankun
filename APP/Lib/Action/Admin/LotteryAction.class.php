<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-16
 * Time: 下午3:38
 * To change this template use File | Settings | File Templates.
 */

class LotteryAction extends CommonAction{
    protected $tableName="Lottery";
    public function index(){
        $db=M($this->tableName);
        $list=$db
            ->where('id>0')
            ->order('add_time desc')
            ->select();
        $this->assign('list',$list);
        $this->display();
    }

    public function insert(){
        $db=D($this->tableName);
        $db->create();
        $db->start_time=strtotime($_POST['start_time']);
        $db->end_time=strtotime($_POST['end_time']);
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


    Public function doUpload(){
        import('ORG.Net.UploadFile');
        $upload=new UploadFile();
        $upload->maxSize=3145728;
        $upload->allowExts=array('jpg','gif','png','jpeg');
        $upload->savePath ='./Upload/Admin/';
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
    public function detail(){

    }

    public function setNumber(){
        $num=I('num');
        $db=M($this->tableName);

    }
}