package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.service.UserEmailSendService;

@Controller
public class UserEmailController {

	@Autowired
	private UserEmailSendService userMailsender;
	
	private final String MODULE_NAME = "user";

	// 유저의 회원가입시 이메일 인증
	@RequestMapping(value = "/user/userEmailCheck", method = RequestMethod.GET)
	public String UserRegEmail(String email, String id, HttpServletRequest request) {

		userMailsender.mailSendWithUserKey(email, id, request);



		return MODULE_NAME+"/userRegEmailCheck";
	}

	// 유저의 회원가입시 이메일 인증을 확인하는 문장
	@RequestMapping(value = "/user/userRegEmailcheckPro", method = RequestMethod.POST)
	public String UserRegEmail(String key, HttpServletRequest request,Model model) {
		
		int row = userMailsender.userRegEmailcheckPro(key,request);
		model.addAttribute("row", row);


		return MODULE_NAME+"/userRegEmailCheck_pro";
	}


	  
	
	
	
}
