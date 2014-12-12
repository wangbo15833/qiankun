<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-12-5
 * Time: 上午10:23
 * To change this template use File | Settings | File Templates.
 */

class OrdersAction extends CommonAction{
    protected $tableName = 'Orders';
    public function index(){
        $db=M($this->tableName);
        import('ORG.Util.Page');
        $count=$db->where('userid='.$_SESSION[C('USER_AUTH_KEY')])->count();
        $Page=new Page($count,8);
        $show=$Page->show();
        $list=$db
            ->table(C('DB_PREFIX').'orders O')
            ->join(C('DB_PREFIX')."goods G ON O.goodsid=G.id")
            ->where('G.shopid='.$_SESSION['shopid'])
            ->field('*,O.status as status')
            ->order('O.create_time')
            ->limit($Page->firstRow.','.$Page->listRows)->select();

        $new_list=array();
        foreach($list as $Item){
            if($Item['status']==1&&$Item['paytype']=='hdfk'){
                $Item['OrderButton']="发货";
                $new_list[]=$Item;
            }
            elseif($Item['status']==1&&$Item['paytype']!='hdfk'){
                $new_list[]=$Item;
            }

        }

        $this->assign('list',$new_list);
        $this->assign('page',$show);
        $this->display();

    }
}