package com.web.myoa.service;

import java.io.InputStream;
import java.util.List;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;

public interface ProcessDefinitionService {
	
	// 发布流程
	public void uploadProcess(InputStream input,String processName);
	
	// 查看所有的流程部署信息
	public List<Deployment> findAllDeploymen();
	
	// 查看所有的流程定义信息
	public List<ProcessDefinition> findAllProcessDefintions();
	
	// 删除流程
	public void deleteProcessById(String id);
	
	// 查看流程定义图
	public InputStream findImageInputStream(String deploymentId,String imageName);
}
