package com.web.myoa.service;

import java.util.List;

import com.web.myoa.pojo.EmployeeCustom;
import com.web.myoa.pojo.MenuTree;
import com.web.myoa.pojo.RolePermissionCustom;
import com.web.myoa.pojo.SysPermission;
import com.web.myoa.pojo.SysRole;

public interface EmployeeService {
	
	// 查询用户列表及角色和上级主管信息
	public List<EmployeeCustom> findUserList();
	
	// 查询角色表信息
	public List<SysRole> findAllRoleList();
	
	// 更改用户角色信息
	public void changeRole(String employeeName,String rokeId);
	
	// 通过角色id查找对应的权限列表
	public RolePermissionCustom findPermissionByRoleId(String roleId);
	
	// 查询所有的权限列表
	public List<MenuTree> findAllPermissionList();
	
	// 新建权限
	public void saveSubmitPermission(SysPermission permission);
	
	// 新建角色和对应的权限
	public void saveRoleAndPermissions(String roleName,int[] permissionIds);
	
	// 查看角色列表
	public List<SysRole> findRoles();
	
	// 通过角色id查询对应的权限列表
	public List<SysPermission> loadMyPermissions(String roleId);
	
	// 通过角色id删除对应的角色
	public void deleteRoleByRoleId(String roleId);
	
	// 修改角色权限
	public void updateRoleAndPermission(String roleId,int[] permissionIds);
}
