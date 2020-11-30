package com.web.myoa.pojo;

import java.io.Serializable;
import java.util.List;

public class ActivitiUser implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer userid;
	private String usercode;
	private List<SysPermission> permissions; // 用户的权限
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	
	public String getUsercode() {
		return usercode;
	}
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}
	public List<SysPermission> getPermissions() {
		return permissions;
	}
	public void setPermissions(List<SysPermission> permissions) {
		this.permissions = permissions;
	}
	
	
}
