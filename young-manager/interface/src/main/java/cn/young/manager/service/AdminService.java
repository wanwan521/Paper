package cn.young.manager.service;

import cn.young.manager.pojo.Admin;

/**
 * @author  young
 */
public interface AdminService {
    /**
     * 登录接口
     * @param aname
     * @param password
     * @return
     */
    Admin adminLogin(String aname, String password);
}
