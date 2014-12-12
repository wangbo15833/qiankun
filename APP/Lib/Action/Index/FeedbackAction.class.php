<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-11
 * Time: 上午11:38
 * To change this template use File | Settings | File Templates.
 */

class FeedbackAction extends BaseAction{
    protected $tableName="Feedback";

    public function add(){
        $this->display();
    }

    public function index(){
        echo "您的反馈已提交";
    }

    public function insert(){
        $db=M($this->tableName);
        $db->create();
        $db->add_time=time();
        $result=$db->add();
        if($result){
            $this->success("添加成功","__URL__/index");
        }
        else{
            $this->error("添加失败");
        }
    }
}