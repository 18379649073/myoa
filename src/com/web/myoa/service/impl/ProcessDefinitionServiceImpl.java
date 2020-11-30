package com.web.myoa.service.impl;

import java.io.InputStream;
import java.util.List;
import java.util.zip.ZipInputStream;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.myoa.service.ProcessDefinitionService;

@Service("ProcessDefinitionService")
public class ProcessDefinitionServiceImpl implements ProcessDefinitionService {

	@Autowired
	private RepositoryService repositoryService;
	
	
	//上传流程
	@Override
	public void uploadProcess( InputStream input,String processName) {
		System.out.println("流程上传");
		ZipInputStream zipInput = new ZipInputStream(input);
		this.repositoryService
			.createDeployment()
			.name(processName)
			.addZipInputStream(zipInput)
			.deploy();
	}

	// 查看所有的流程部署信息
	@Override
	public List<Deployment> findAllDeploymen() {
		List<Deployment> list = this.repositoryService
									.createDeploymentQuery()
									.list();
		return list;
	}

	// 查看所有的流程定义信息
	@Override
	public List<ProcessDefinition> findAllProcessDefintions() {
		List<ProcessDefinition> list = this.repositoryService.createProcessDefinitionQuery().list();
		return list;
	}

	// 删除流程定义
	@Override
	public void deleteProcessById(String id) {
		this.repositoryService.deleteDeployment(id, true);
		
	}

	// 获取流程定义图的输入流
	@Override
	public InputStream findImageInputStream(String deploymentId, String imageName) {
		return this.repositoryService.getResourceAsStream(deploymentId, imageName);
	}
	
	

}
