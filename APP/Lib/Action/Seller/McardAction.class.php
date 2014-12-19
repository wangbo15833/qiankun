<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-19
 * Time: 上午11:06
 * To change this template use File | Settings | File Templates.
 */

class McardAction extends CommonAction{
    protected $tableName="Mcard";
    public function index(){
        $db=M($this->tableName);
        $list=$db->where('shopid='.session('shopid'))->select();
        $this->assign("list",$list);
        $this->display();
    }

    public function insert(){
        $db=M($this->tableName);
        $data['tel']=I('tel');
        $data['shopid']=session('shopid');
        $data['add_time']=time();
        $result=$db->add($data);
        if($result){
            $qrurl=$this->qrGenerate($_POST['tel']);
            $db->where(array('tel'=>$data['tel'],'shopid'=>$data['shopid']))->setField('qrurl',$qrurl);
            $this->success("添加成功","__URL__/index");
        }
        else{
            $this->error("添加失败");
        }
    }

    function qrGenerate($str){
        vendor("phpqrcode.phpqrcode");
        $level='L';
        $size=4;
        $path="Qrcode/";
        $fileName=$path.md5($str.'|'.$level.'|'.$size).'.png';
        QRcode::png($str,$fileName,$level,$size);
        return $fileName;
    }
}