package com.web.myoa.service;

import java.util.List;
import java.util.Map;

import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;

import com.web.myoa.pojo.Baoxiaobill;
import com.web.myoa.pojo.Employee;

public interface ProcessTaskService {
	
	// 启动报销申请，开启流程
	public void submitTask(Baoxiaobill baoxiao,Employee employee);
	
	// 查看我的待办事务列表
	public List<Task> myTaskList(Employee employee);
	
	// 查看当前流程定义图
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId);
	
	public Map<String, Object> findCoordingByTask(String taskId);
	
	// 查看当前任务的分支语句
	public List<String> findOutComeListByTaskId(String taskId);
	
	// 查询报销单的信息
	public Baoxiaobill findBillByTaskId(String taskId);
	
	// 查询当前任务的批注记录
	public List<Comment> findCommentListByTaskId(String taskId);
	
	// 完成任务，流程推进
	public void submitTask(String taskId,String comment,int baoxiaobillId,Employee employee,String submitType);
	
	// 查看我的报销单历史记录
	public List<Baoxiaobill> myBaoxiaoBill(Integer userId);
	
	// 查看报销单通过报销单的id
	public Baoxiaobill findBaoxiaobillById(int baoxiaobillId);
	
	// 查看当前报销单的历史批注信息
	public List<Comment> findCommentByBaoxiaobillId(int baoxiaobillId);
	
	// 通过business——key获取当前活动任务对象
	public Task getTaskByBusiness_id(String business_key);
	
	// 删除指定的报销记录
	public void deleteBaoxiaoBill(int baoxiaobillId);
	
}
