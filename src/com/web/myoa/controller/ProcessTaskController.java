package com.web.myoa.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.web.myoa.pojo.ActivitiUser;
import com.web.myoa.pojo.Baoxiaobill;
import com.web.myoa.pojo.Employee;
import com.web.myoa.service.ProcessDefinitionService;
import com.web.myoa.service.ProcessTaskService;
import com.web.myoa.utils.Constants;

@Controller
public class ProcessTaskController {

	@Autowired
	private ProcessTaskService processTaskService;
	
	@Autowired
	private ProcessDefinitionService rocessDefinitionService;
	
	// 提交报销申请 开启任务
	@RequestMapping("/saveStartLeave")
	public String saveStartLeave(Baoxiaobill baoxiao,HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		Employee employee = (Employee)session.getAttribute(Constants.USER_KEY);
		ActivitiUser activitiUser = (ActivitiUser) SecurityUtils.getSubject().getPrincipal();
		Employee employee = new Employee();
		employee.setId((long)activitiUser.getUserid());
		employee.setName(activitiUser.getUsercode());
		this.processTaskService.submitTask(baoxiao, employee);
		return "redirect:myTaskList";
	}
	
	// 查看我的待办事务
	@RequestMapping("/myTaskList")
	public String myTaskList(HttpSession session,Model model) {
//		Employee employee = (Employee)session.getAttribute(Constants.USER_KEY);
		ActivitiUser activitiUser = (ActivitiUser) SecurityUtils.getSubject().getPrincipal();
		Employee employee = new Employee();
		employee.setId((long)activitiUser.getUserid());
		employee.setName(activitiUser.getUsercode());
//		System.out.println(employee.getName()+"," + employee.getId());
		List<Task> taskList = this.processTaskService.myTaskList(employee);
		model.addAttribute("taskList", taskList);
		return "workflow_task";
	}
	
	// 查看当前流程定义图
	@RequestMapping("/viewCurrentImage")
	public ModelAndView viewCurrentImage(String taskId) {
		/**一：查看流程图*/
		//1：获取任务ID，获取任务对象，使用任务对象获取流程定义ID，查询流程定义对象
		ProcessDefinition pd = this.processTaskService.findProcessDefinitionByTaskId(taskId);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("deploymentId", pd.getDeploymentId());
		mv.addObject("imageName", pd.getDiagramResourceName());
		/**
		 * 二：查看当前活动，获取当期活动对应的坐标x,y,width,height，将4个值存放到Map<String,Object>中*/
		Map<String, Object> map = this.processTaskService.findCoordingByTask(taskId);

		mv.addObject("acs", map);
		mv.setViewName("viewimage");
		return mv;
	}
	
	// 显示任务详情
	@RequestMapping("/viewTaskForm")
	public ModelAndView viewTaskForm(String taskId) {
		ModelAndView mv = new ModelAndView();
		// 查询报销单的信息
		Baoxiaobill bill = this.processTaskService.findBillByTaskId(taskId);
		// 查询当前任务的批注记录
		List<Comment> commentList = this.processTaskService.findCommentListByTaskId(taskId);
		// 查看当前任务的分支语句
		List<String> list = this.processTaskService.findOutComeListByTaskId(taskId);
		mv.addObject("list", list);
		mv.addObject("bill", bill);
		mv.addObject("commentList", commentList);
		mv.addObject("taskId", taskId);
		mv.setViewName("approve_leave");
		return mv;
	}
	
	// 处理任务
	@RequestMapping("/submitTask")
	public String submitTask(int id, String taskId,String comment,String submitType,HttpSession session) {
//		System.out.println(id+","+taskId +"," + comment + "," + submitType);
//		
//		Employee employee = (Employee)session.getAttribute(Constants.USER_KEY);
//		ActivitiUser activitiUser = (ActivitiUser) SecurityUtils.getSubject().getPrincipal();
//		String usercode = activitiUser.getUsercode();
		ActivitiUser activitiUser = (ActivitiUser) SecurityUtils.getSubject().getPrincipal();
		Employee employee = new Employee();
		employee.setId((long)activitiUser.getUserid());
		employee.setName(activitiUser.getUsercode());
		this.processTaskService.submitTask(taskId, comment, id, employee, submitType);
		return "redirect:/myTaskList";
	}
	
	// 我的所有报销单记录
	@RequestMapping("/myBaoxiaoBill")
	public String myBaoxiaoBill(HttpSession session,Model model,
			@RequestParam(value = "pageNum",required = false,defaultValue = "1") int pageNum) {
//		Employee employee = (Employee)session.getAttribute(Constants.USER_KEY);
		ActivitiUser activitiUser = (ActivitiUser) SecurityUtils.getSubject().getPrincipal();
		Employee employee = new Employee();
		employee.setId((long)activitiUser.getUserid());
		employee.setName(activitiUser.getUsercode());
		
		// 分页操作
		PageHelper.startPage(pageNum,Constants.PAGE_SIZE);
		List<Baoxiaobill> list = this.processTaskService.myBaoxiaoBill(employee.getId().intValue());
//		for(Baoxiaobill b : list) {
//			System.out.println("------------------------"+b.getTitle());
//		}
		PageInfo<Baoxiaobill> info = new PageInfo<>(list);
		model.addAttribute("info", info);
		
		model.addAttribute("baoxiaoList", list);
		return "workflow_task_history";
	}
	
	// 报销历史记录  id 为报销单的id
	@RequestMapping("/getHistoryCommentByBaoxiaoBillId")
	public String getHistoryCommentByBaoxiaoBillId(int id,Model model) {
		List<Comment> commentList = this.processTaskService.findCommentByBaoxiaobillId(id);
		Baoxiaobill baoxiaobill = this.processTaskService.findBaoxiaobillById(id);
		model.addAttribute("commentList", commentList);
		model.addAttribute("bill", baoxiaobill);
		return "baoxiao_comment";
	}
	
//	http://localhost:8080/myoa/viewImage?deploymentId=1301&imageName=baoxiaoprocess.png
	// 查看当前流程图 // id为流程id
	@RequestMapping("/getImgByBaoxiaoBillId")
	public ModelAndView getImgByBaoxiaoBillId(int id) {
		String BUSINESS_KEY = Constants.BAOXIAOBILL_KEY + "." + id;
		
		Task task = this.processTaskService.getTaskByBusiness_id(BUSINESS_KEY);
		
		/**一：查看流程图*/
		//1：获取任务ID，获取任务对象，使用任务对象获取流程定义ID，查询流程定义对象
		ProcessDefinition pd = this.processTaskService.findProcessDefinitionByTaskId(task.getId());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("deploymentId", pd.getDeploymentId());
		mv.addObject("imageName", pd.getDiagramResourceName());
		/**
		 * 二：查看当前活动，获取当期活动对应的坐标x,y,width,height，将4个值存放到Map<String,Object>中*/
		Map<String, Object> map = this.processTaskService.findCoordingByTask(task.getId());

		mv.addObject("acs", map);
		mv.setViewName("viewimage");
		return mv;
	}
	
	// 删除指定的报销信息
	@RequestMapping("/deleteBaoxiaoBill")
	public String deleteBaoxiaoBill(int id) {
		this.processTaskService.deleteBaoxiaoBill(id);
		return "redirect:myBaoxiaoBill";
	}
	
	
}
