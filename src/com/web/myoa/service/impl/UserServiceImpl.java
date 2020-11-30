package com.web.myoa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.myoa.mapper.EmployeeMapper;
import com.web.myoa.mapper.MyManagerMapper;
import com.web.myoa.pojo.Employee;
import com.web.myoa.pojo.EmployeeExample;
import com.web.myoa.pojo.EmployeeExample.Criteria;
import com.web.myoa.pojo.MenuTree;
import com.web.myoa.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private EmployeeMapper employeeMapper;
	
	@Autowired
	private com.web.myoa.mapper.MenuTree menuTree;
	
	@Autowired
	private MyManagerMapper myManagerMapper;
	
	
	// 登录
	@Override
	public Employee login(String userName, String password) {
		EmployeeExample example = new EmployeeExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andNameEqualTo(userName);
		createCriteria.andPasswordEqualTo(password);
		List<Employee> selectByExample = employeeMapper.selectByExample(example);
		if(selectByExample == null || selectByExample.size() == 0) {
			return null;
		}else {
			return selectByExample.get(0);
		}
	}

	// 查找菜单
	@Override
	public List<MenuTree> getMenuTree() {
		List<MenuTree> findMenuTree = menuTree.findMenuTree();
		return findMenuTree;
	}

	// 查找财务审核人
	@Override
	public Employee findFinanceEmployee() {
//		EmployeeExample example = new EmployeeExample();
//		Criteria criteria = example.createCriteria();
//		criteria.andManagerIdEqualTo(value)
		// 通过主键查询财务的工作人员
		Employee employee = this.employeeMapper.selectByPrimaryKey((long) 6);
		return employee;
	}

	// 查找自己的上级主管
	@Override
	public Employee findMyManagerByMyId(long userId) {
		Employee manager = this.myManagerMapper.findMyManager(userId);
		return manager;
	}

	// 按用户名查找用户对象
	@Override
	public Employee findEmployeeByUsername(String username) {
		EmployeeExample example = new EmployeeExample();
		Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(username);
		List<Employee> list = this.employeeMapper.selectByExample(example);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	

}
