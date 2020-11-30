package com.web.myoa.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.myoa.pojo.EmployeeCustom;
import com.web.myoa.pojo.MenuTree;
import com.web.myoa.pojo.RolePermissionCustom;
import com.web.myoa.pojo.SysPermission;
import com.web.myoa.pojo.SysRole;
import com.web.myoa.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	// 查询用户列表
	@RequestMapping("/findUserList")
	public String findUserList(Model model) {
		List<EmployeeCustom> userList = this.employeeService.findUserList();
		model.addAttribute("employeeList", userList);
		List<SysRole> roleList = this.employeeService.findAllRoleList();
		model.addAttribute("roleList", roleList);
		return "userlist";
	}
	
	// 用户角色更改
	@RequestMapping("/changeRole")
	@ResponseBody
	public Boolean changeRole(String userName,String role) {
//		System.out.println("接收到的前端数据是： userId:"+userName+",role:"+role);
		try {
			this.employeeService.changeRole(userName, role);
		}catch (Exception e) {
			e.printStackTrace();
			return false; // 有异常返回false   
		}
		return true;
	}
	
	// 查看用户权限
	@RequestMapping("/getRoleAndPermission")
	@ResponseBody
	public RolePermissionCustom getRoleAndPermission(String userId) {
//		System.out.println("从前端获取到的角色id为： "+roleId);
		RolePermissionCustom rolePermission = this.employeeService.findPermissionByRoleId(userId);
//		System.out.println("从数据库中查找到的内容为：" + rolePermission.getRoleName());
		return rolePermission;
	}
	
	
	// 添加角色页面
	@RequestMapping("/toAddRole")
	public String toAddRole(Model model) {
		List<MenuTree> allPermissionList = this.employeeService.findAllPermissionList();
		model.addAttribute("allPermissions", allPermissionList);
		return "rolelist";
	}
	
	// 新建权限
	@RequestMapping("/saveSubmitPermission")
	public String saveSubmitPermission(SysPermission permission) {
		this.employeeService.saveSubmitPermission(permission);
		return "redirect:toAddRole";
	}
	
	// 新建角色和对应的权限
	@RequestMapping("/saveRoleAndPermissions")
	public String saveRoleAndPermissions(String roleName,int[] permissionIds) {
//		System.out.println("角色名称 ： "+roleName+",权限id列表： " + Arrays.toString(permissionIds));
		this.employeeService.saveRoleAndPermissions(roleName, permissionIds);
		return "redirect:findRoles";
	}
	
	// 查看角色列表
	@RequestMapping("/findRoles")
	public String findRoles(Model model) {
		List<SysRole> list = this.employeeService.findRoles();  // 角色列表
		model.addAttribute("allRoles", list);
		// 所有的权限列表
		List<MenuTree> allPermissionList = this.employeeService.findAllPermissionList();
		model.addAttribute("allMenuAndPermissions", allPermissionList);
		return "permissionlist";
	}
	
	// 通过角色id查询对应的权限列表
	@ResponseBody
	@RequestMapping("/loadMyPermissions")
//	public List<SysPermission> loadMyPermissions(@ModelAttribute("rokeId") String roleId) {  // 角色id回显
	public List<SysPermission> loadMyPermissions( String roleId) {
//		System.out.println("获取到的角色id： "+roleId);
		List<SysPermission> list = this.employeeService.loadMyPermissions(roleId);
//		System.out.println("查询到的权限列表：------");
		for(SysPermission s : list) {
			System.out.println(s.getName());
		}
		return list;
	}
	
	// 删除角色通过角色id
	@RequestMapping("/deleteRoleByRoleId")
	public String deleteRoleByRoleId(String roleId) {
		this.employeeService.deleteRoleByRoleId(roleId);
		return "redirect:findRoles";
	}
	
	// 修改角色权限
	@RequestMapping("/updateRoleAndPermission")
	public String updateRoleAndPermission(String roleId,int[] permissionIds) {
//		System.out.println("获取到的角色id： "+roleId +",权限id列表： " + Arrays.toString(permissionIds));
		this.employeeService.updateRoleAndPermission(roleId, permissionIds);
		return "redirect:findRoles";
	}
	
}
