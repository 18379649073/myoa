package com.web.myoa.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.web.myoa.service.ProcessDefinitionService;

@Controller
public class ProcessWord {

	@Autowired
	private ProcessDefinitionService processDefinitionService;
	
	// 发布流程
	@RequestMapping("/deployProcess")
	public String deployProcess(String processName,MultipartFile fileName, Model model) {
		if(processName == null || processName.length() <= 0 || fileName == null) {
			model.addAttribute("errorMessage", "文件名不能为空或者文件不存在");
			return "error";
		}
		try {
			processDefinitionService.uploadProcess( fileName.getInputStream(),processName);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:processDefinitionList";
	}
	
	// 查看所有的流程
	@RequestMapping("/processDefinitionList")
	public String processDefinitionList(Model model) {
		List<Deployment> allDeploymen = this.processDefinitionService.findAllDeploymen();
		List<ProcessDefinition> allProcessDefintions = this.processDefinitionService.findAllProcessDefintions();
		model.addAttribute("depList",allDeploymen);
		model.addAttribute("pdList", allProcessDefintions);
		return "workflow_list";
	}
	
	// 查看流程定义图
	@RequestMapping("/viewImage")
	public String viewImage(String deploymentId,String imageName,HttpServletResponse response) {
		InputStream inputStream = this.processDefinitionService.findImageInputStream(deploymentId, imageName);
		OutputStream out = null;
		try {
			out = response.getOutputStream();
			//4：将输入流中的数据读取出来，写到输出流中
			for(int b=-1;(b=inputStream.read())!=-1;){
				out.write(b);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				out.close();
				inputStream.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	// 删除流程定义
	@RequestMapping("/delDeployment")
	public String delDeployment(String deploymentId) {
		this.processDefinitionService.deleteProcessById(deploymentId);
		return "redirect:processDefinitionList";
	}
	
	
}
