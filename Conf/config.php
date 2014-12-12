<?php
return array(
    //'配置项'=>'配置值'
    /*定义模版标签*/
    //'TMPL_L_DELIM' => '<#', //模板引擎普通标签开始标记
    //'TMPL_R_DELIM' => '#>', //模板引擎普通标签结束标记
    //'TMPL_ACTION_ERROR'         =>  'Public:success', // 默认错误跳转对应的模板文件
    //'TMPL_ACTION_SUCCESS'       =>  'Public:success', // 默认成功跳转对应的模板文件
    'URL_MODEL'          => '2', //URL模式
    'LOAD_EXT_CONFIG' => 'db,rbac,alipay,website',
    'APP_GROUP_LIST' => 'Index,Admin,Seller,User,Api', // 首页,接口页面，后台，客户，代理商
    'DEFAULT_GROUP' => 'Index', // 默认分组
    'DEFAULT_THEME' => 'default',
    'TMPL_FILE_DEPR' => '_',
	'SESSION_AUTO_START'        =>  true,
    'APP_STATUS' => 'debug',
    'SHOW_PAGE_TRACE'           =>  true, //显示调试信息

);