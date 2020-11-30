package com.web.myoa.utils;

import javax.servlet.http.HttpSession;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.web.myoa.pojo.Employee;
import com.web.myoa.service.UserService;


/**
 * 财务审批
 * @author
 *
 */
public class AssigneeTaskListenerFinance implements TaskListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void notify(DelegateTask delegateTask) {
		
		// 获取spring容器
		WebApplicationContext context = ContextLoader.getCurrentWebApplicationContext();
		UserService userService = (UserService) context.getBean("UserService");
		
//		// 获取session
//		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
//		HttpSession session = requestAttributes.getRequest().getSession();
//		Employee employee = (Employee) session.getAttribute(Contants.GLOBAL_SESSION_ID);
//		Employee manager = employeeService.findEmployeeByManagerId(employee.getManagerId());
		
		// 获取财务的名字 id为6
		Employee financeManage = userService.findFinanceEmployee();
		delegateTask.setAssignee(financeManage.getName()+"."+financeManage.getId());  // 流程图里面的是名字加id
	}
}
