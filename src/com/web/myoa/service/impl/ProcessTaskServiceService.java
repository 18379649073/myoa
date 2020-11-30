package com.web.myoa.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.myoa.mapper.BaoxiaobillMapper;
import com.web.myoa.pojo.Baoxiaobill;
import com.web.myoa.pojo.BaoxiaobillExample;
import com.web.myoa.pojo.BaoxiaobillExample.Criteria;
import com.web.myoa.pojo.Employee;
import com.web.myoa.service.ProcessTaskService;
import com.web.myoa.service.UserService;
import com.web.myoa.utils.Constants;

@Service("ProcessTaskService")
public class ProcessTaskServiceService implements ProcessTaskService {
	
	@Autowired
	private BaoxiaobillMapper baoxiaobillMapper;
	
	@Autowired
	private RuntimeService runtimeService;
	
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private RepositoryService repositoryService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private HistoryService historyService;
	
	// 提交报销申请，启动流程
	@Override
	public void submitTask(Baoxiaobill baoxiao,Employee employee) {
		baoxiao.setCreatdate(new Date());
		baoxiao.setState(1);  // 初始状态为1，表示正在处理的流程实例
		baoxiao.setUserId(employee.getId().intValue());
		
		baoxiaobillMapper.insert(baoxiao); // 将报销单存入数据库中
		
		String key = Constants.BAOXIAOBILL_KEY; // 获取报销单流程的key
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("employeeId", employee.getName()+"."+employee.getId().toString());  // 指定下个任务人的name.id
		String business_key = key + "." + baoxiao.getId(); // 报销流程id+.+报销单数据表中的id
		this.runtimeService.startProcessInstanceByKey(key, business_key, map); // 启动力流程实例并传入数据
	}

	// 查看我的待办事务列表  代办人为格式name.id
	@Override
	public List<Task> myTaskList(Employee employee) {
//		System.out.println(userId);
		List<Task> list = this.taskService
							  .createTaskQuery()
							  .taskAssignee(employee.getName()+"."+employee.getId().toString())
							  .list();
		return list;
	}
	
	@Override
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId) {
		//使用任务ID，查询任务对象
		Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
		//获取流程定义ID
		String processDefinitionId = task.getProcessDefinitionId();
		//查询流程定义的对象
		ProcessDefinition pd = repositoryService.createProcessDefinitionQuery()//创建流程定义查询对象，对应表act_re_procdef 
					.processDefinitionId(processDefinitionId)//使用流程定义ID查询
					.singleResult();
		return pd;
	}

	@Override
	public Map<String, Object> findCoordingByTask(String taskId) {
		//存放坐标
		Map<String, Object> map = new HashMap<String,Object>();
		//使用任务ID，查询任务对象
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)//使用任务ID查询
					.singleResult();
		//获取流程定义的ID
		String processDefinitionId = task.getProcessDefinitionId();
		//获取流程定义的实体对象（对应.bpmn文件中的数据）
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity)repositoryService.getProcessDefinition(processDefinitionId);
		//流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		//使用流程实例ID，查询正在执行的执行对象表，获取当前活动对应的流程实例对象
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//创建流程实例查询
											.processInstanceId(processInstanceId)//使用流程实例ID查询
											.singleResult();
		//获取当前活动的ID
		String activityId = pi.getActivityId();
		//获取当前活动对象
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);//活动ID
		//获取坐标
		map.put("x", activityImpl.getX());
		map.put("y", activityImpl.getY());
		map.put("width", activityImpl.getWidth());
		map.put("height", activityImpl.getHeight());
		return map;
	}

	// 获取当前任务的分支内容
	@Override
	public List<String> findOutComeListByTaskId(String taskId) {
		//返回存放连线的名称集合
		List<String> list = new ArrayList<String>();
		//1:使用任务ID，查询任务对象
		Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
		//2：获取流程定义ID
		String processDefinitionId = task.getProcessDefinitionId();
		//3：查询ProcessDefinitionEntiy对象
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity) repositoryService.getProcessDefinition(processDefinitionId);
		//使用任务对象Task获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		//使用流程实例ID，查询正在执行的执行对象表，返回流程实例对象
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
					.processInstanceId(processInstanceId)//使用流程实例ID查询
					.singleResult();
		//获取当前活动的id
		String activityId = pi.getActivityId();
		//4：获取当前的活动
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);
		//5：获取当前活动完成之后连线的名称
		List<PvmTransition> pvmList = activityImpl.getOutgoingTransitions();
		if(pvmList!=null && pvmList.size()>0){
			for(PvmTransition pvm:pvmList){
				String name = (String) pvm.getProperty("name");
				if(StringUtils.isNotBlank(name)){
					list.add(name);
				} else{
					list.add("默认处理");
				}
			}
		}
		return list;
	}

	// 查询报销单的信息
	@Override
	public Baoxiaobill findBillByTaskId(String taskId) {
		// 获取任务对象
		Task task = this.taskService.createTaskQuery().taskId(taskId).singleResult();
		// 获取流程实例对象
		ProcessInstance processInstance = this.runtimeService.createProcessInstanceQuery().processInstanceId(task.getProcessInstanceId()).singleResult();
		String bussiness_key = processInstance.getBusinessKey();
		String billId = bussiness_key.split("\\.")[1];
		// 获取请假信息对象
		Baoxiaobill baoxiaobill = baoxiaobillMapper.selectByPrimaryKey(Integer.parseInt(billId));
		
		return baoxiaobill;
	}

	// 查询当前任务的批注记录
	@Override
	public List<Comment> findCommentListByTaskId(String taskId) {
		// 获取当前任务
		Task task = this.taskService.createTaskQuery().taskId(taskId).singleResult();
		List<Comment> comments = this.taskService.getProcessInstanceComments(task.getProcessInstanceId());
		return comments;
	}

	// 完成任务，流程推进
	@Override
	public void submitTask(String taskId, String comment, int baoxiaobillId, Employee employee, String submitType) {
		Task task = this.taskService.createTaskQuery().taskId(taskId).singleResult();
		String processInstanceId = task.getProcessInstanceId();
		// 加批注前必须指定当前代办人
		Authentication.setAuthenticatedUserId(employee.getName());
		// 加批注
		this.taskService.addComment(taskId, processInstanceId, comment);
		// 判断流程分支,加上对应的分支添加
		Map<String,Object> map = new HashMap<>();
		if(submitType.equals("默认处理")) {
			// 完成任务
			this.taskService.complete(taskId);
		}else {
			map.put("message", submitType);
//			Employee manager = this.userService.findMyManagerByMyId(employee.getId()); // 通过当前登录账号，获取上级主管
//			System.out.println("下一个代办人：  "+manager.getName()+"."+manager.getId());
//			map.put("employeeId", manager.getName()+"."+manager.getId());// 指定下一个待办人的name.id
//			// 完成任务
			this.taskService.complete(taskId,map);
		}
		// 判断流程是否结束，结束时将状态改为2
		ProcessInstance pi = this.runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
		if(pi == null) {
			Baoxiaobill bill = this.baoxiaobillMapper.selectByPrimaryKey(baoxiaobillId);
			bill.setState(2);
			this.baoxiaobillMapper.updateByPrimaryKey(bill);
		}		
		
	}

	// 查看我的报销单历史记录
	@Override
	public List<Baoxiaobill> myBaoxiaoBill(Integer userId) {
		BaoxiaobillExample example = new BaoxiaobillExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		List<Baoxiaobill> list = this.baoxiaobillMapper.selectByExample(example);
		return list;
	}
	
	// 查看报销单通过报销单的id
	@Override
	public Baoxiaobill findBaoxiaobillById(int baoxiaobillId) {
		Baoxiaobill baoxiaobill = this.baoxiaobillMapper.selectByPrimaryKey(baoxiaobillId);
		return baoxiaobill;
	}

	// 查看当前报销单的历史批注信息
	@Override
	public List<Comment> findCommentByBaoxiaobillId(int baoxiaobillId) {
		String business_key = Constants.BAOXIAOBILL_KEY+"."+baoxiaobillId;
		// 获取历史流程对象
		HistoricProcessInstance processInstance = this.historyService
													  .createHistoricProcessInstanceQuery()
													  .processInstanceBusinessKey(business_key)
													  .singleResult();
		// 通过流程实例对象，获取历史批注信息
		List<Comment> list = this.taskService.getProcessInstanceComments(processInstance.getId());
		return list;
	}

	// 通过business——key获取当前任务对象
	@Override
	public Task getTaskByBusiness_id(String bUSINESS_KEY) {
		Task task = taskService.createTaskQuery().processInstanceBusinessKey(bUSINESS_KEY).singleResult();
		return task;
	}

	// 删除指定的报销记录
	@Override
	public void deleteBaoxiaoBill(int baoxiaobillId) {
		this.baoxiaobillMapper.deleteByPrimaryKey(baoxiaobillId);  // 删除表中的报销记录
		
	}
}
