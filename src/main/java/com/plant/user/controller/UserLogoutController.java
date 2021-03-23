package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.service.UserLogoutService;

@Controller
public class UserLogoutController {

	@Autowired
	private UserLogoutService UserLogoutService;
	
	private final String MODULE_NAME = "user";
	
	// 로그아웃 확인 창
	@RequestMapping(value="user/userlogout",method = RequestMethod.GET)
	public String UserLogoutForm(HttpServletRequest request, Model model) {
		
		return MODULE_NAME+"/userLogoutForm";
	}
	
	// 로그아웃 확인
	@RequestMapping(value = "/user/userLogout", method = RequestMethod.POST)
	public String UserLogout(HttpServletRequest request, Model model) {
		
		String id = (String)request.getSession().getAttribute("id");
		
		model.addAttribute("row",UserLogoutService.UserLogout(id, request));
		
		
		return MODULE_NAME+"/userLogout_pro";
	}
}
