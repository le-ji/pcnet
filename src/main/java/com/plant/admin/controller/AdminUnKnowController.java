package com.plant.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.admin.service.AdminUnKnownService;

@Controller
public class AdminUnKnowController {
	
	@Autowired
	private AdminUnKnownService service;
	
	private final String MODULE_NAME="admin"; 


	@RequestMapping(value="/admin/adminUnKnown", method=RequestMethod.GET)
	public String UnknownForm(Model model) {

		
		model.addAttribute("randomId",service.Random());
		
		return MODULE_NAME+"/admin_random_logincode";
	}


	@RequestMapping(value="/unknownLogin_pro", method=RequestMethod.POST)
	public String UnknownId(String loginnum, Model model) {
		

		model.addAttribute("row",service.UnknownIdReg(loginnum));
		
		return MODULE_NAME+"/admin_random_logincode_pro";
	}
}
