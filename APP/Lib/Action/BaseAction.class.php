<?php
class BaseAction extends Action{
	protected function _initialize()
	{
		//读取模板主题路径
		$theme_path = $this->_getThemePath();
		$public = array('css'=>'/UI/Public/css','js'=>'/UI/Public/js','img'=>'/UI/Public/images/','root'=>'/UI/Public');
		$theme =	array('css'=>$theme_path.'/style/css','js'=>$theme_path.'/style/js','img'=>$theme_path.'/style/images','root'=>$theme_path.'/');
		$style = array('P' =>$public,'T' =>$theme);
		$Style =  $style;
		$this->assign('Theme',$Style);
		$this->assign('action', $this->getActionName());
        //ip地址定位相关
        if(!cookie('area')){
            $ip = get_client_ip();
            import('ORG.Net.IpLocation');// 导入IpLocation类
            $Ip = new IpLocation(); // 实例化类
            //$location = $Ip->getlocation('222.223.28.3'); // 获取某个IP地址所在的位置
            $location = $Ip->getlocation($ip);
            //dump($location['country']);exit;
            $db=M();
            $area=$db->query("SELECT * FROM ".C('DB_PREFIX')."area WHERE LOCATE(name,'".$location['country']."')>0 AND id>32");
            //echo $db->getLastSql();exit;
            if($area){
                cookie('area',$area[0]['id']);
            }
            else{
                cookie('area','36');
            }

        }
    }
	
	private function _getThemePath()
	{
		$theme = C('DEFAULT_THEME');
		$group  = defined('GROUP_NAME')?GROUP_NAME.'/':'';
		if(1==C('APP_GROUP_MODE')){ // 独立分组模式
			return $theme_path = '/'.dirname(BASE_LIB_PATH).'/'.$group.basename(TMPL_PATH).'/'.$theme;
		}else{
			return $theme_path = '/'.basename(TMPL_PATH).'/'.$group.$theme;
		}
	}

}