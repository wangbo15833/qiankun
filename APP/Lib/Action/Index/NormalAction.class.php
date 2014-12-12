<?php
// 本类由系统自动生成，仅供测试用途
class NormalAction extends BaseAction {
    public function index(){
        cookie('is_aged',false);
        //获取商品分类列表
        $db=M('GoodsCategory');
        $goods_category_list=$db->select();

        //获取地区列表
        $db=M('Area');
        $area_list=$db->where('pid='.cookie('area'))->select();


        //获取商品列表
        $db=M('Goods');
        $goods_list=$db
            ->table(C('DB_PREFIX').'goods G')
            ->join(C('DB_PREFIX')."shop s ON G.shopid=s.id")
            ->where('city='.cookie('area'))
            ->field('*,G.id as id,G.category_id as category_id')
            ->order('G.add_time desc')
            ->select();

        $goods_list_meishi=array();
        $goods_list_xxyl=array();
        $goods_list_jiudian=array();
        $goods_list_shfw=array();

        foreach($goods_list as $Item){
            $root_id=getGoodsCategoryRootID($Item['category_id']);

            if($root_id==1){
                $goods_list_meishi[]=$Item;
            }
            elseif($root_id==2){
                $goods_list_xxyl[]=$Item;
            }
            elseif($root_id==3){
                $goods_list_jiudian[]=$Item;
            }
            elseif($root_id==7){
                $goods_list_shfw[]=$Item;
            }
        }


        $this->assign('goods_list_meishi',$goods_list_meishi);
        $this->assign('goods_list_xxyl',$goods_list_xxyl);
        $this->assign('goods_list_jiudian',$goods_list_jiudian);
        $this->assign('goods_list_shfw',$goods_list_shfw);
        $this->assign('area_list',$area_list);
        $this->assign('goods_category_list',$goods_category_list);
	    $this->display();
    }
}