package com.web.myoa.mapper;

import java.util.List;

import com.web.myoa.pojo.SysPermission;

public interface MenuTree {
	
	public List<com.web.myoa.pojo.MenuTree> findMenuTree();
	
	public List<SysPermission> findChildrenMenuTree();
	
	//查询所有的权限
	public List<com.web.myoa.pojo.MenuTree> findAllPermissionList();
	
	// 查询子权限列表
	public List<SysPermission> findChildrenPermissionList();
	
	// 通过角色id查询对应的权限列表
	public List<SysPermission> loadMyPermissions(String roleId);
}
