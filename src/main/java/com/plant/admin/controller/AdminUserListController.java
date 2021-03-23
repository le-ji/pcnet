package com.plant.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.admin.service.AdminUserList;

import net.webjjang.util.PageObject;

@Controller
public class AdminUserListController {
	
	@Autowired
	private AdminUserList service;
	

	private String MODULE_NAME="admin";
	


	@RequestMapping(value="admin/userList", method=RequestMethod.GET)
	public String UserListFrom(Model model,PageObject pageObject) {
		
		model.addAttribute("userCnt",service.userCnts(pageObject));
		model.addAttribute("list",service.UserList(pageObject));
		model.addAttribute("pageObject", pageObject);
		
		return MODULE_NAME+"/adminUserList";
	}


	@RequestMapping(value="/admin/adminUserLogout", method=RequestMethod.GET)
	public String UserListFrom(Model model,HttpServletRequest request,String idx) {
		
		model.addAttribute("row",service.UserLogout(request,idx));
		
		return MODULE_NAME+"/adminUserLogout_pro";
	}


	

}
