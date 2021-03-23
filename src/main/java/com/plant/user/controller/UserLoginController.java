package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.model.UserVO;
import com.plant.user.service.Sha256;
import com.plant.user.service.UserLoginService;

@Controller
public class UserLoginController {
	
	@Autowired
	private UserLoginService UserLoginService;
	
	private final String MODULE_NAME = "user";
	
	// 유저 로그인 
	@RequestMapping(value = "/user/userLogin", method = RequestMethod.POST)
	public String UserLogin(UserVO vo, Model model, HttpServletRequest request) {
		vo.setPw(Sha256.encrypt(vo.getPw()));
		model.addAttribute("row",UserLoginService.UserLogin(vo,request));
		
	
		return MODULE_NAME+"/userLogin_pro";
	}
	
}
