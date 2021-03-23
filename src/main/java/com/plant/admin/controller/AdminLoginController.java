package com.plant.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.plant.admin.model.AdminVO;
import com.plant.admin.service.AdminLoginService;

@Controller
public class AdminLoginController {
	@Autowired
	private AdminLoginService service;
	
	private String MODULE_NAME="admin";
	
	@RequestMapping(value="/admin/adminlogin", method =RequestMethod.GET)
	public String AdminLoginForm() {
		
		return MODULE_NAME+"/adminlogin";
	}
	
	@RequestMapping(value="/admin/adminlogin", method =RequestMethod.POST)
	public String AdminLogin(AdminVO vo, Model model, HttpServletRequest request) {
		model.addAttribute("row",service.AdminLogin(vo,request));
		
		return MODULE_NAME+"/adminlogin_pro";
	}
}
