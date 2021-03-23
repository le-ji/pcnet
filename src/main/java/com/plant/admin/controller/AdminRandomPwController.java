package com.plant.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminRandomPwController {
	
	@RequestMapping(value="admin/adminPw" ,method=RequestMethod.GET)
	public String userPwRandom() {
		
		return "admin/admin_random_pw";
	}
}
