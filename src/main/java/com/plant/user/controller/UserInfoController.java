package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.service.UserInfo;

@Controller
public class UserInfoController {
	@Autowired
	private UserInfo info;
	
	// 유저의 메인 화면
	@RequestMapping(value="/info" , method = RequestMethod.GET)
	public String UserInfo(HttpServletRequest request, Model model) {
		
		model.addAttribute("vo", info.UserInfo(request));
		return "/user/info";
	}
}
