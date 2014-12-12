<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-6
 * Time: 下午5:16
 * To change this template use File | Settings | File Templates.
 */

return array(
    'alipay_config'=>array(
        'partner'		=> '',
        //安全检验码，以数字和字母组成的32位字符
        'key'			=> '',
//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
//签名方式 不需修改
        'sign_type'    => strtoupper('MD5'),
//字符编码格式 目前支持 gbk 或 utf-8
        'input_charset'=> strtolower('utf-8'),
//ca证书路径地址，用于curl中ssl校验
//请保证cacert.pem文件在当前文件夹目录中
        'cacert'    => getcwd().'\\cacert.pem',
//访问模式,根据自己的服务器是否支持ssl访问，若支持请选择https；若不支持请选择http
        'transport'    => 'http',
    ),

    'alipay'=>array(
        //支付类型
        'payment_type' => "1",
        //必填，不能修改
        //服务器异步通知页面路径
        'notify_url' => "http://商户网关地址/create_direct_pay_by_user-PHP-UTF-8/notify_url.php",
        //需http://格式的完整路径，不能加?id=123这类自定义参数        //页面跳转同步通知页面路径
        'return_url' => "http://商户网关地址/create_direct_pay_by_user-PHP-UTF-8/return_url.php",
        //需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/        //卖家支付宝帐户
        //'seller_email' => $_POST['WIDseller_email'],

        //需以http://开头的完整路径，例如：http://www.商户网址.com/myorder.html        //防钓鱼时间戳
        'anti_phishing_key' => "",
        //若要使用请调用类文件submit中的query_timestamp函数        //客户端的IP地址
        'exter_invoke_ip' => ""
        //非局域网的外网IP地址，如：221.0.0.1
    )


);