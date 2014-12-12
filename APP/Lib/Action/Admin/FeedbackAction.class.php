<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-11
 * Time: 下午4:41
 * To change this template use File | Settings | File Templates.
 */

class FeedbackAction extends CommonAction{
    protected $tableName="Feedback";
    public function index(){
        $db=M($this->tableName);
        $list=$db->where("id>0")->select();
        $this->assign("list",$list);
        $this->display();
    }

    public function foreverdelete(){
        $id=I('id');
        $db=M($this->tableName);
        $result=$db->where("id=".$id)->delete();
        if($result){
            $this->success("删除成功","__URL__/index");
        }
        else{
            $this->error("删除失败");
        }
    }
}