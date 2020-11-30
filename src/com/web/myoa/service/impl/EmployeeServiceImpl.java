package com.web.myoa.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.myoa.mapper.EmployeeCustomMapper;
import com.web.myoa.mapper.MenuTree;
import com.web.myoa.mapper.SysPermissionMapper;
import com.web.myoa.mapper.SysRoleMapper;
import com.web.myoa.mapper.SysRolePermissionMapper;
import com.web.myoa.mapper.SysUserRoleMapper;
import com.web.myoa.pojo.EmployeeCustom;
import com.web.myoa.pojo.RolePermissionCustom;
import com.web.myoa.pojo.SysPermission;
import com.web.myoa.pojo.SysRole;
import com.web.myoa.pojo.SysRolePermission;
import com.web.myoa.pojo.SysRolePermissionExample;
import com.web.myoa.pojo.SysUserRole;
import com.web.myoa.pojo.SysUserRoleExample;
import com.web.myoa.pojo.SysUserRoleExample.Criteria;
import com.web.myoa.service.EmployeeService;

@Service("EmployeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeCustomMapper employeeCustomMapper;
	
	@Autowired
	private SysRoleMapper sysRoleMapper;
	
	@Autowired
	private SysUserRoleMapper sysUserRoleMapper;
	
	@Autowired
	private MenuTree menuTree;
	
	@Autowired
	private SysPermissionMapper sysPermissionMapper;
	
	@Autowired
	private SysRolePermissionMapper sysRolePermissionMapper;
	
	
	// 查询用户列表及角色和上级主管信息
	@Override
	public List<EmployeeCustom> findUserList() {
		List<EmployeeCustom> userList = this.employeeCustomMapper.findUserList();
		return userList;
	}

	// 查询角色表信息
	@Override
	public List<SysRole> findAllRoleList() {
		List<SysRole> list = this.sysRoleMapper.selectByExample(null);
		return list;
	}

	// 更改用户角色信息
	@Override
	public void changeRole(String employeeName, String rokeId) {
		SysUserRole sysUserRole = new SysUserRole();
		sysUserRole.setSysRoleId(rokeId);  // 设置需要更改的列
		SysUserRoleExample example = new SysUserRoleExample();
		Criteria criteria = example.createCriteria();
		criteria.andSysUserIdEqualTo(employeeName); // 更改数据的指定条件
		this.sysUserRoleMapper.updateByExampleSelective(sysUserRole, example);
	}

	// 通过角色id查找对应的权限列表
	// 通过用户id 查找对应的权限列表
	@Override
	public RolePermissionCustom findPermissionByRoleId(String roleId) {
		RolePermissionCustom rolePermissionCustom = this.employeeCustomMapper.findPermissionByRoleId(roleId);
		return rolePermissionCustom;
	}

	// 查询所有的权限列表
	@Override
	public List<com.web.myoa.pojo.MenuTree> findAllPermissionList() {
		List<com.web.myoa.pojo.MenuTree> list = this.menuTree.findAllPermissionList();
		return list;
	}

	// 新建权限
	@Override
	public void saveSubmitPermission(SysPermission permission) {
		this.sysPermissionMapper.insertSelective(permission);
	}

	// 新建角色和对应的权限
	@Override
	public void saveRoleAndPermissions(String roleName, int[] permissionIds) {
		// 添加角色表数据
		String roleId = UUID.randomUUID().toString();
		SysRole sysRole = new SysRole();
		sysRole.setId(roleId);
		sysRole.setName(roleName);
		sysRole.setAvailable("1");
		this.sysRoleMapper.insertSelective(sysRole);
		// 添加rolePermission关系表数据
		// 遍历权限列表id，存入数据库中
		for(Integer i : permissionIds) {
			SysRolePermission sysRolePermission = new SysRolePermission();
			sysRolePermission.setSysRoleId(roleId);
			String roleAndPermissionId = UUID.randomUUID().toString();
			sysRolePermission.setId(roleAndPermissionId);
			sysRolePermission.setSysPermissionId(i.toString());
			this.sysRolePermissionMapper.insertSelective(sysRolePermission);
		}
	}

	// 查看角色列表
	@Override
	public List<SysRole> findRoles() {
		List<SysRole> list = this.sysRoleMapper.selectByExample(null);
		return list;
	}

	// 通过角色id查询对应的权限列表
	@Override
	public List<SysPermission> loadMyPermissions(String roleId) {
		List<SysPermission> list = this.menuTree.loadMyPermissions(roleId);
		return list;
	}

	// 通过角色id删除对应的角色
	@Override
	public void deleteRoleByRoleId(String roleId) {
		this.sysRoleMapper.deleteByPrimaryKey(roleId);  // 删除role表中的角色信息
		// 删除rolePermission关系表中的对应数据
		SysRolePermissionExample example = new SysRolePermissionExample();
		com.web.myoa.pojo.SysRolePermissionExample.Criteria criteria = example.createCriteria();
		criteria.andSysRoleIdEqualTo(roleId);
		this.sysRolePermissionMapper.deleteByExample(example);
	}

	// 修改角色权限
	@Override
	public void updateRoleAndPermission(String roleId, int[] permissionIds) {
		// 先将改角色的全部权限都删除，再添加对应的权限
		SysRolePermissionExample example = new SysRolePermissionExample();
		com.web.myoa.pojo.SysRolePermissionExample.Criteria criteria = example.createCriteria();
		criteria.andSysRoleIdEqualTo(roleId);  // 给定删除的条件
		this.sysRolePermissionMapper.deleteByExample(example);
		// 添加权限给对应的角色
		for(Integer permissionId : permissionIds) {
			SysRolePermission sysRolePermission = new SysRolePermission();
			String sysRolePermissionId = UUID.randomUUID().toString();  // rolePermission关系表的主键
			sysRolePermission.setId(sysRolePermissionId);
			sysRolePermission.setSysRoleId(roleId);
			sysRolePermission.setSysPermissionId(permissionId.toString());
			this.sysRolePermissionMapper.insert(sysRolePermission);
		}
	}
	
	
	

}
