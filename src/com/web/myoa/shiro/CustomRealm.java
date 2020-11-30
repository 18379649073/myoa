package com.web.myoa.shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.myoa.pojo.ActivitiUser;
import com.web.myoa.pojo.Employee;
import com.web.myoa.pojo.RolePermissionCustom;
import com.web.myoa.pojo.SysPermission;
import com.web.myoa.service.EmployeeService;
import com.web.myoa.service.UserService;


public class CustomRealm extends AuthorizingRealm {
	

	@Autowired
	private UserService userService;
	
	@Autowired
	private EmployeeService employeeService;

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// 获取用户名
		String usercode= (String) token.getPrincipal();
//		System.out.println("进入ream进行用户认证：username=" + usercode);
		// 获取数据库中的用户对象
		Employee employee = this.userService.findEmployeeByUsername(usercode);
		if(employee == null) {
			return null;
		}
//		System.out.println(employee.getId()+","+employee.getName());
		// 获取该用户的权限列表
//		List<SysPermission> permissions = 
		// 获取数据库中的用户密码
		String password_db = employee.getPassword();
		// 获取盐
		String salt_db = employee.getSalt();
		ActivitiUser activitiUser = new ActivitiUser();
//		activitiUser.setPermissions(permissions);
		activitiUser.setUserid(employee.getId().intValue());
//		System.out.println("用户的id为：" + employee.getId());
		activitiUser.setUsercode(usercode);
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(activitiUser, password_db, ByteSource.Util.bytes(salt_db), "CustomRealm");
		return info;
	}
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		
//		System.out.println("进行权限的过滤");
		// 获取用户
		ActivitiUser activitiUser = (ActivitiUser) principals.getPrimaryPrincipal();
		
		// 获取用户的权限id
		Employee employee = this.userService.findEmployeeByUsername(activitiUser.getUsercode());
		// 查询用户的权限
		System.out.println("权限的id为：" + employee.getRole());
//		List<SysPermission> list = this.workFlowService.findPermissionByRoleId(employee.getRole());
		// 通过此前用的通过用户id查对应角色的权限列表
		RolePermissionCustom rolePermissionCustom = this.employeeService.findPermissionByRoleId(employee.getId().toString());
		List<SysPermission> list = rolePermissionCustom.getPermissionList();
		
		// 封装用户的权限
		List<String> percodes = new ArrayList<>();
		for(SysPermission per : list) {
			percodes.add(per.getPercode());
			System.out.print(per.getPercode() + ",  ");
			System.out.println();
		}
		
		// 设置当前用户的权限
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.addStringPermissions(percodes);
		return info;
	}

}
