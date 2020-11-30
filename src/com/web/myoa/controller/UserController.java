package com.web.myoa.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.myoa.pojo.Employee;
import com.web.myoa.pojo.MenuTree;
import com.web.myoa.service.UserService;
import com.web.myoa.utils.Constants;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 登录验证
	@RequestMapping("/login")
	public String login(String username, String password,Model model,HttpSession session,HttpServletRequest request) {
//		if(username == null || username.length()<= 0 || password == null || password.length() <= 0) {
//			model.addAttribute("error", "用户名或密码不能为空");
//			return "login";
//		}
//		Employee employee = userService.login(username, password);
//		if(employee != null) {
//			// 将登陆的用户存放在session中
//			session.setAttribute(Constants.USER_KEY, employee);
//			return "redirect:/DoIndex";
//		}else {
//			model.addAttribute("error", "用户名或密码错误");
//			return "login";
//		}
		// 从上下文中获取异常信息
		String exceptionName = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
		if( exceptionName != null) {
			if(UnknownAccountException.class.getName().equals(exceptionName)
					|| IncorrectCredentialsException.class.getName().equals(exceptionName)) {
				model.addAttribute("message", "用户名或密码错误");
//					}else if("randomcodeError".equals(exceptionName)) {
//						model.addAttribute("message", "验证码有误！");
			}else {
				model.addAttribute("message", "未知异常，请重新登录");
				System.out.println(request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME));
			}
		}
		return "login";
	}
	
//	// 登出
//	@RequestMapping("/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "login";
//	}
	
	// index后台首页
	@RequestMapping("/doIndex")
	public String index(Model model) {
		List<MenuTree> menuTree = userService.getMenuTree();
		model.addAttribute("menuTree", menuTree);
		return "index";
	}
}
