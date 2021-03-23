package com.plant.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.admin.service.AdminUserIdService;
import com.plant.user.model.UserVO;
import com.plant.user.service.Sha256;



@Controller
public class AdminUserIdController {
	
	@Autowired
	private AdminUserIdService service;
	
	private String MODULE_NAME="admin";
	
	@RequestMapping(value="/admin/admin_random_logincode", method=RequestMethod.GET)
	public String UserIdRandomForm(Model model) {
		model.addAttribute("randomPw", service.randomPw());

		return MODULE_NAME+"/admin_random_pw";
	}
	@RequestMapping(value="/admin_random_logincode_pro", method=RequestMethod.GET)
	public String UserIdRand(UserVO vo,Model model) {
		vo.setPw(Sha256.encrypt(vo.getPw()));
		model.addAttribute("row", service.random_logincode(vo));
		
		

		return MODULE_NAME+"/admin_random_pw_pro";
	}
}
