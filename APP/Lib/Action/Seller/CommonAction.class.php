<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-11-10
 * Time: 上午11:54
 * To change this template use File | Settings | File Templates.
 */

class CommonAction extends BaseAction{
    function _initialize() {
        parent::_initialize();
        import('ORG.Util.Cookie');
        // 用户权限检查
        if (C('USER_AUTH_ON') && !in_array(MODULE_NAME, explode(',', C('NOT_AUTH_MODULE')))) {
            import('ORG.Util.RBAC');
            if (!RBAC::AccessDecision(GROUP_NAME)) {
                //检查认证识别号
                if (!$_SESSION [C('USER_AUTH_KEY')]) {
                    //跳转到认证网关
                    redirect(PHP_FILE .'/'.GROUP_NAME.C('USER_AUTH_GATEWAY'));
                }
                // 没有权限 抛出错误
                if (C('RBAC_ERROR_PAGE')) {
                    // 定义权限错误页面
                    redirect(C('RBAC_ERROR_PAGE'));
                } else {
                    if (C('GUEST_AUTH_ON')) {
                        $this->assign('jumpUrl', PHP_FILE . C('USER_AUTH_GATEWAY'));
                    }
                    // 提示错误信息
                    unset($_SESSION[C('USER_AUTH_KEY')]);
                    $this->error(L('_VALID_ACCESS_'),'__GROUP__/Public/login');
                }
            }
        }
    }
}