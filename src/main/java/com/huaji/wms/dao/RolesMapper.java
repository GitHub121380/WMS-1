package com.huaji.wms.dao;

import org.springframework.stereotype.Repository;

/**
 *
 * @author 滑技工厂
 * @since 2020/3/1.
 */
@Repository
public interface RolesMapper {

    /**
     * 获取角色对应的ID
     * @param roleName 角色名
     * @return 返回角色的ID
     */
    Integer getRoleID(String roleName);

}
