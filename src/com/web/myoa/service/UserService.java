package com.web.myoa.service;

import java.util.List;

import com.web.myoa.pojo.Employee;
import com.web.myoa.pojo.MenuTree;

public interface UserService {
	
	// 登录
	public Employee login(String userName,String password);
	
	// 查询菜单
	public List<MenuTree> getMenuTree();
	
	// 查找财务审核人
	public Employee findFinanceEmployee();
	
	// 查找自己的上级主管
	public Employee findMyManagerByMyId(long userId);
	
	// 按用户名查找用户对象
	public Employee findEmployeeByUsername(String username);
}
