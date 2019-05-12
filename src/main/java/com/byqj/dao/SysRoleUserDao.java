package com.byqj.dao;

import com.byqj.dto.SysRoleUserDto;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SysRoleUserDao {

    @Select("SELECT COUNT(sru.user_id) FROM sys_role_user AS sru WHERE role_code=#{roleCode}")
    boolean checkUserInRole(String roleCode);

    @Select("<script>"
            + "SELECT sad.user_name,sad.real_name,sad.phone,sd.name,sad.post "
            + "FROM sys_role_user AS sru "
            + "LEFT JOIN sys_admin_detail AS sad ON sru.user_id=sad.user_id "
            + "LEFT JOIN sys_department AS sd ON sad.dept_id=sd.id "
            + "WHERE 1 "
            + "<if test=\"roleCode!=null and roleCode!=\'\' \"> "
            + "AND sru.role_code =#{roleCode} "
            + "</if> "
            + "</script>")
    List<SysRoleUserDto> searchUserDetailByRoleCode(@Param("roleCode") String roleCode);

}
