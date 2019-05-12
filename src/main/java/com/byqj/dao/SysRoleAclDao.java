package com.byqj.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.byqj.entity.SysRoleAcl;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SysRoleAclDao extends BaseMapper<SysRoleAcl> {

    @Delete("<script>  " +
            "DELETE FROM sys_role_acl WHERE role_code IN " +
            "<foreach collection='roleCodeList' index='index' item='item' open='(' close=')' separator=','> " +
            "#{item} " +
            "</foreach> " +
            "</script>")
    void batchDeleteRoleAclByRoleCode(@Param("roleCodeList") List<String> roleCodeList);

}
