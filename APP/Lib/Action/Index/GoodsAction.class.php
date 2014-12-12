<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-21
 * Time: 下午9:43
 * To change this template use File | Settings | File Templates.
 */
class GoodsAction extends BaseAction{
    public function index(){
        $area=I("area");
        $category=I("category_id");
        $outArr=array();
        if($area) $outArr=array_merge($outArr,array('area'=>$area));
        if($category) $outArr=array_merge($outArr,array('category_id'=>$category));
        //parse_str($_SERVER['QUERY_STRING'], $outArr);
        //dump($outArr);
        //dump($_SERVER);

        $db=M('Area');
        $areas=$db->where('pid='.cookie('area'))->select();
        $new_areas=array();
        foreach($areas as $item){
            $item['url']=$this->make_url('/Goods/index',array_merge($outArr,array('area'=>$item['id'],'p'=>1)));
            $new_areas[]=$item;
        }
        $area_all=$this->make_url('/Goods/index',array_merge($outArr,array('area'=>'0','p'=>1)));


        $db2=M('GoodsCategory');
        $goods_category_list=$db2->select();
        $goods_category_list_bypid=$db2->where('pid=0')->select();
        $new_goods_category_list=array();
        foreach($goods_category_list_bypid as $item){
            $item['url']=$this->make_url('/Goods/index',array_merge($outArr,array('category_id'=>$item['id'],'p'=>1)));
            $new_goods_category_list[]=$item;
        }
        $goods_category_all= $item['url']=$this->make_url('/Goods/index',array_merge($outArr,array('category_id'=>'0','p'=>1)));


        import('ORG.UTil.Page');
        $db1=M('Goods');
        $count=$db1->table(C('DB_PREFIX').'goods G')->join(C('DB_PREFIX')."shop S on G.shopid=S.id")->where(array_merge($outArr,array('S.city'=>cookie('area'))))->count();

        $Page=new Page($count,20);//实例化分页类
        $show=$Page->show();
        $goods=$db1->table(C('DB_PREFIX').'goods G')->join(C('DB_PREFIX')."shop S on G.shopid=S.id")->where(array_merge($outArr,array('S.city'=>cookie('area'))))->order("G.add_time")->limit($Page->firstRow.','.$Page->listRows)->select();
        //echo $db1->getLastSql();



        $this->assign('area_all',$area_all);
        $this->assign('goods_category_all',$goods_category_all);
        $this->assign('page',$show);
        $this->assign('areas',$new_areas);
        $this->assign('goods_category_list_bypid',$new_goods_category_list);
        $this->assign('goods',$goods);
        $this->assign('goods_category_list',$goods_category_list);
        $this->display();
    }

    public function index1(){
        $area=I("area");
        $category=I("category_id");
        $outArr=array();
        if($area) $outArr=array_merge($outArr,array('area'=>$area));
        if($category) $outArr=array_merge($outArr,array('category_id'=>$category));
        //parse_str($_SERVER['QUERY_STRING'], $outArr);
        //dump($outArr);
        //dump($_SERVER);

        $db=M('Area');
        $areas=$db->where('parentid='.cookie('area'))->select();
        $new_areas=array();
        foreach($areas as $item){
            $item['url']=$this->make_url('/Goods/index',array_merge($outArr,array('area'=>$item['did'],'p'=>1)));
            $new_areas[]=$item;
        }
        $area_all=$this->make_url('/Goods/index',array_merge($outArr,array('area'=>'0','p'=>1)));


        $db2=M('GoodsCategory');
        $goods_category_list=$db2->where('pid=0')->select();
        $new_goods_category_list=array();
        foreach($goods_category_list as $item){
            $item['url']=$this->make_url('/Goods/index',array_merge($outArr,array('category_id'=>$item['id'],'p'=>1)));
            $new_goods_category_list[]=$item;
        }
        $goods_category_all= $item['url']=$this->make_url('/Goods/index',array_merge($outArr,array('category_id'=>'0','p'=>1)));


        import('ORG.UTil.Page');
        $db1=M('Goods');
        $count=$db1->join('qiankun_shop on qiankun_goods.shopid=qiankun_shop.id')->where($outArr)->count();
        //echo $db1->getLastSql();
        $Page=new Page($count,10);//实例化分页类
        $show=$Page->show();
        $goods=$db1->join('qiankun_shop on qiankun_goods.shopid=qiankun_shop.id')->where($outArr)->order('qiankun_goods.add_time')->limit($Page->firstRow.','.$Page->listRows)->select();

        $this->assign('area_all',$area_all);
        $this->assign('goods_category_all',$goods_category_all);
        $this->assign('page',$show);
        $this->assign('areas',$new_areas);
        $this->assign('goods_category_list',$new_goods_category_list);
        $this->assign('goods',$goods);
        $this->display();
    }

    function make_url($url,$params){
        $myUrl=$url;
        foreach($params as $key=>$i){
            $myUrl.='/'.$key.'/'.$i;
        }

        return $myUrl;

    }

    public function detail(){
        $id=I('id');
        $db=M('Goods');
        $result=$db->where('id='.$id)->find();
        //dump($result);
        $this->assign('result',$result);
        $this->display();
    }

    public function buy(){
        $id=I('id');
        $db=M('Goods');
        $result=$db->where('id='.$id)->find();
        cookie('goodsid',$result['id']);
        cookie('goods_num',1);
        $orderID=time().rand(1000,9999);
        $this->redirect('/Orders/index/id/'.$orderID);
    }

}