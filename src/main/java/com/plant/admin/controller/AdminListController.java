package com.plant.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminListController {

	private String MODULE_NAME="admin";
	
	
	@RequestMapping(value="/adminList", method =RequestMethod.GET)
	public String AdminListForm() {
		
		return MODULE_NAME+"/adminList2";
	}
}
