package com.byqj.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.byqj.entity.SysUserAcl;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface SysUserAclDao extends BaseMapper<SysUserAcl> {

}
