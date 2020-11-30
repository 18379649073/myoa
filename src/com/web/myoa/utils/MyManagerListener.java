package com.web.myoa.utils;

import javax.servlet.http.HttpSession;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.apache.shiro.SecurityUtils;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.web.myoa.pojo.ActivitiUser;
import com.web.myoa.pojo.Employee;
import com.web.myoa.service.UserService;


/**
 * 财务审批
 * @author
 *
 */
public class MyManagerListener implements TaskListener {

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
//		Employee employee = (Employee) session.getAttribute(Constants.USER_KEY); // 获取当登录的人
//		Employee manager = userService.findMyManagerByMyId(employee.getId()); // 获取上级主管对象
		ActivitiUser activitiUser = (ActivitiUser) SecurityUtils.getSubject().getPrincipal();
		Employee employee = userService.findEmployeeByUsername(activitiUser.getUsercode());
		Employee manager = userService.findMyManagerByMyId(employee.getId());
		
		delegateTask.setAssignee(manager.getName()+"."+manager.getId());  // 流程图里面的是name.id
	}
}
