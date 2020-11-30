package com.web.myoa.pojo;

public class EmployeeCustom extends Employee {
	
	public String managerName; // 上级主管的名字
	public String roleId;  // 用户角色的id
	public String roleName;  // 用户角色的角色名字
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	
}
