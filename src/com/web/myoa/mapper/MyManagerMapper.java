package com.web.myoa.mapper;

import com.web.myoa.pojo.Employee;

public interface MyManagerMapper {
	
	// 查找我的上级主管
	public Employee findMyManager(long userId);
}
