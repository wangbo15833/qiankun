<?php
class NewsAction extends BaseAction{
    public function index(){
        $category = D('category');
        //将无限级分类中的数据去除来,根据concat(path,'-',id) => 'bpath' 实现排序(很关键)
        $list = $category->field(array('id','name','pid','path',"concat(path,'-',id)"=>'bpath'))->order('bpath')->select();
        foreach ($list as $key => $val){
            //根据排序的位置生成无限极列表的样式
            for($i = 0; $i < count(explode('-',$list[$key]['bpath']))-2 ; $i++){
                $list[$key]['name'] = "--".$list[$key]['name'];
            }
        }
        $this->assign('list',$list);
        $this->display();
    }


}