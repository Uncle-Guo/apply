<?php
namespace app\index\controller; // 该文件的位于application\index\controller文件夹
use app\index\model\Apply_user;   // 用户模型
/**
 * 用户管理
 */
class User
{
    public function index()
    {
        $Apply_user = new Apply_user;
        $users = $Apply_user->select();
        $user = $users[0];
        var_dump($user->getData('username'));
    }
}