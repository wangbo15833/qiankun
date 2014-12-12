<?php
// +----------------------------------------------------------------------
// | ThinkPHP
// +----------------------------------------------------------------------
// | Copyright (c) 2007 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// $Id: common.php 2601 2012-01-15 04:59:14Z liu21st $

//公共函数
function toDate($time, $format = 'Y-m-d H:i:s') {
	if (empty ( $time )) {
		return '';
	}
	$format = str_replace ( '#', ':', $format );
	return date ($format, $time );
}

function getStatus($status, $imageShow = true) {
	switch ($status) {
		case 0 :
			$showText = '禁用';
			$showImg = '<IMG SRC="__PUBLIC__/Images/locked.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="禁用">';
			break;
		case 2 :
			$showText = '待审';
			$showImg = '<IMG SRC="__PUBLIC__/Images/prected.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="待审">';
			break;
		case - 1 :
			$showText = '删除';
			$showImg = '<IMG SRC="__PUBLIC__/Images/del.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="删除">';
			break;
		case 1 :
		default :
			$showText = '正常';
			$showImg = '<IMG SRC="__PUBLIC__/Images/ok.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="正常">';

	}
	return ($imageShow === true) ?  $showImg  : $showText;

}

function getNodeGroupName($id) {
	if (empty ( $id )) {
		return '未分组';
	}
	if (isset ( $_SESSION ['nodeGroupList'] )) {
		return $_SESSION ['nodeGroupList'] [$id];
	}
	$Group = D ( "Group" );
	$list = $Group->getField ( 'id,title' );
	$_SESSION ['nodeGroupList'] = $list;
	$name = $list [$id];
	return $name;
}

function showStatus($status, $id) {
	switch ($status) {
		case 0 :
			$info = '<a href="javascript:resume(' . $id . ')">恢复</a>';
			break;
		case 2 :
			$info = '<a href="javascript:pass(' . $id . ')">批准</a>';
			break;
		case 1 :
			$info = '<a href="javascript:forbid(' . $id . ')">禁用</a>';
			break;
		case - 1 :
			$info = '<a href="javascript:recycle(' . $id . ')">还原</a>';
			break;
	}
	return $info;
}


function getGroupName($id) {
	if ($id == 0) {
		return '无上级组';
	}
	if ($list = F ( 'groupName' )) {
		return $list [$id];
	}
	$dao = D ( "Role" );
	$list = $dao->select( array ('field' => 'id,name' ) );
	foreach ( $list as $vo ) {
		$nameList [$vo ['id']] = $vo ['name'];
	}
	$name = $nameList [$id];
	F ( 'groupName', $nameList );
	return $name;
}

function pwdHash($password, $type = 'md5') {
	return hash ( $type, $password );
}

/*支付宝处理相关函数start*/
//////////////////////////////////////////////////////
//Orderlist数据表，用于保存用户的购买订单记录；
/* Orderlist数据表结构；
CREATE TABLE `tb_orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,购买者userid
  `username` varchar(255) DEFAULT NULL,购买者姓名
  `ordid` varchar(255) DEFAULT NULL,订单号
  `ordtime` int(11) DEFAULT NULL,订单时间
  `productid` int(11) DEFAULT NULL,产品ID
  `ordtitle` varchar(255) DEFAULT NULL,订单标题
  `ordbuynum` int(11) DEFAULT '0',购买数量
  `ordprice` float(10,2) DEFAULT '0.00',产品单价
  `ordfee` float(10,2) DEFAULT '0.00',订单总金额
  `ordstatus` int(11) DEFAULT '0',订单状态
  `payment_type` varchar(255) DEFAULT NULL,支付类型
  `payment_trade_no` varchar(255) DEFAULT NULL,支付接口交易号
  `payment_trade_status` varchar(255) DEFAULT NULL,支付接口返回的交易状态
  `payment_notify_id` varchar(255) DEFAULT NULL,
  `payment_notify_time` varchar(255) DEFAULT NULL,
  `payment_buyer_email` varchar(255) DEFAULT NULL,
  `ordcode` varchar(255) DEFAULT NULL,       //这个字段不需要的，大家看我西面的修正补充部分的说明！
  `isused` int(11) DEFAULT '0',
  `usetime` int(11) DEFAULT NULL,
  `checkuser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
*/
//在线交易订单支付处理函数
//函数功能：根据支付接口传回的数据判断该订单是否已经支付成功；
//返回值：如果订单已经成功支付，返回true，否则返回false；
function checkorderstatus($ordid){
    $Ord=M('Orderlist');
    $ordstatus=$Ord->where('ordid='.$ordid)->getField('ordstatus');
    if($ordstatus==1){
        return true;
    }else{
        return false;
    }
}
//处理订单函数
//更新订单状态，写入订单支付后返回的数据
function orderhandle($parameter){
    $ordid=$parameter['out_trade_no'];
    $data['payment_trade_no']      =$parameter['trade_no'];
    $data['payment_trade_status']  =$parameter['trade_status'];
    $data['payment_notify_id']     =$parameter['notify_id'];
    $data['payment_notify_time']   =$parameter['notify_time'];
    $data['payment_buyer_email']   =$parameter['buyer_email'];
    $data['ordstatus']             =1;
    $Ord=M('Orderlist');
    $Ord->where('ordid='.$ordid)->save($data);
}
/*-----------------------------------
2013.8.13更正
下面这个函数，其实不需要，大家可以把他删掉，
具体看我下面的修正补充部分的说明
------------------------------------*/
//获取一个随机且唯一的订单号；
function getordcode(){
    $Ord=M('Orderlist');
    $numbers = range (10,99);
    shuffle ($numbers);
    $code=array_slice($numbers,0,4);
    $ordcode=$code[0].$code[1].$code[2].$code[3];
    $oldcode=$Ord->where("ordcode='".$ordcode."'")->getField('ordcode');
    if($oldcode){
        getordcode();
    }else{
        return $ordcode;
    }
}
/*支付宝处理相关函数end*/

//用于模版自定义函数,根据ID获取地区名称
function getAreaName($id){
    $db=M('Area');
    return $db->where('id='.$id)->getField('name');
}

//获取店铺类别名称
function getShopCategoryName($cid){
    $db=M('Shop_category');
    return $db->where('id='.$cid)->getField('name');
}

//获取商品类目名称
function getGoodsCategoryName($cid){
    $db=M('GoodsCategory');
    return $db->where('id='.$cid)->getField('name');
}

//获取频道名称
function getChannelName($cid){
    $db=M('Channel');
    return $db->where('id='.$cid)->getField('name');
}

//递归获取栏目列表
function tree(&$list,$pid=0,$level=0,$html='--'){
    static $tree = array();
    foreach($list as $v){
        if($v['pid'] == $pid){
            $v['sort'] = $level;
            $v['html'] = str_repeat($html,$level);
            $tree[] = $v;
            tree($list,$v['id'],$level+1);
        }
    }
    return $tree;
}

//生成公众用户名
function generateUsername(){
  $user="SH_".date("YmdHis").rand(1000,9999);
  return $user;
}

function getGoodsCategoryParentID($id){
    $db=M('GoodsCategory');
    $pid=$db->where('id='.$id)->getField('pid');
    return $pid;
}


function getAreaType($type){
    if ($type==1){
        return "行政区域";
    }
    elseif($type==2){
        return "商圈";
    }
    else{
        return "未分类";
    }

}

function getAreaPid($id){
    $db=M('Area');
    return $db->where('id='.$id)->getField('pid');

}


//递归获取商品列表的根ID
function getGoodsCategoryRootID($id){
    $db=M('GoodsCategory');
    while($id!=0){
        $temp_id=$id;
        $id=$db->where('id='.$id)->getField('pid');
    }
    return $temp_id;

}

function getPaytypeName($type){
    switch($type){
        case 'hdfk':
            $info='货到付款';
            break;
        case 'alipay':
            $info='支付宝支付';
            break;
    }
    return $info;
}

function getOrderStatusName($status){
    switch($status){
        case '1':
            $info="待付款";
            break;
        case '2':
            $info="待发货";
            break;
        case '3':
            $info="已发货";
            break;
        case '4':
            $info="已收货";
            break;
        case '5':
            $info="已评价";
            break;
    }
    return $info;

}
