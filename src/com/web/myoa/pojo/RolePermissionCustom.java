package com.web.myoa.pojo;

import java.util.List;

public class RolePermissionCustom {

	private String roleName; // 角色的名字
	
	// 角色对应的权限列表
	private List<SysPermission> permissionList;
	

	public List<SysPermission> getPermissionList() {
		return permissionList;
	}

	public void setPermissionList(List<SysPermission> permissionList) {
		this.permissionList = permissionList;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
}
