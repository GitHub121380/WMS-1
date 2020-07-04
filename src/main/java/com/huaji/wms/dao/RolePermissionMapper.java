package com.huaji.wms.dao;

import com.huaji.wms.domain.RolePermissionDO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色权限信息 Mapper
 *
 * @author 滑技工厂
 * @since  2020/2/26.
 */
@Repository
public interface RolePermissionMapper {

    List<RolePermissionDO> selectAll();
}
