package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.service.UserDeleteService;

@Controller
public class UserDeleteController {

	@Autowired
	private UserDeleteService service;
	
	private final String MODULE_NAME = "user";
	
	// 회원 삭제로 이동
	@RequestMapping(value="/user/userDelete", method = RequestMethod.GET)
	public String userDeleteForm() {
		
		return MODULE_NAME+"/userDeleteForm";
	}
	// 회원 삭제 sql
	@RequestMapping(value="/user/userDelete", method = RequestMethod.POST)
	public String userDelete(HttpServletRequest request,Model model) {
		
		model.addAttribute("row",service.userDelete(request));
		
		return MODULE_NAME+"/userDelete_pro";
	}
}
