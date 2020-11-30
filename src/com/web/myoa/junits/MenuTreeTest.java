package com.web.myoa.junits;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.web.myoa.pojo.MenuTree;
import com.web.myoa.pojo.SysPermission;
import com.web.myoa.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/applicationContext.xml"})
public class MenuTreeTest {

	@Autowired
	private UserService userService;
	@Test
	public void test() {
		List<MenuTree> menuTrees= userService.getMenuTree();
		for(MenuTree mt : menuTrees) {
			System.out.println(mt.getName());
			List<SysPermission> children = mt.getChildren();
			for(SysPermission s : children) {
				System.out.println("\t" + s.getName());
			}
		}
	}

}
