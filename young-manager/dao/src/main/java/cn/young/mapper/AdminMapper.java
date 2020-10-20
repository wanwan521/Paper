package cn.young.mapper;

import cn.young.manager.pojo.Admin;

/**
 * @author  young
 */
public interface AdminMapper {
    /**
     * 登录接口
     * @param aname
     * @param password
     * @return
     */
    Admin adminLogin(String aname, String password);
}
