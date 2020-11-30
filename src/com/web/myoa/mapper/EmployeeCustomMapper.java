package com.web.myoa.mapper;

import java.util.List;

import com.web.myoa.pojo.EmployeeCustom;
import com.web.myoa.pojo.RolePermissionCustom;

public interface EmployeeCustomMapper {
	public List<EmployeeCustom> findUserList();
	
	// 通过角色id查询角色对应的权限列表
	public RolePermissionCustom findPermissionByRoleId(String roleId);
}