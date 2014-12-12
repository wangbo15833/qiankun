<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-1
 * Time: 上午10:09
 * To change this template use File | Settings | File Templates.
 */

class FormAction extends Action {
    public function index(){
        $Form=M('Form');
        import('ORG.UTil.Page');
        $count=$Form->where('status=1')->count();
        $Page=new Page($count,3);//实例化分页类
        $show=$Page->show();
        $list=$Form->where('status=1')->order('create_time')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);
        $this->assign('page',$show);
        $this->display();
    }

    Public function doUpload(){
        import('ORG.Net.UploadFile');
        $upload=new UploadFile();
        $upload->maxSize=3145728;
        $upload->allowExts=array('jpg','gif','png','jpeg');
        $upload->savePath ='./Upload/';
        if(!$upload->upload()){
            $this->error($upload->getErrorMsg());
        }else{
            $info=$upload->getUploadFileInfo();
        }
        $this->success('数据保存成功！');

    }

}