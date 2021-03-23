package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.model.UserVO;
import com.plant.user.service.Sha256;
import com.plant.user.service.UserIdPwSearchService;

@Controller
public class UserIdPwSearchController {

	@Autowired
	private UserIdPwSearchService service;

	private final String MODULE_NAME = "user";


	// 유저의 아이디 찾기로 이동
	@RequestMapping(value = "/user/userSearch", method = RequestMethod.GET)
	public String userSearch() {

		return MODULE_NAME + "/userIdPwSearch";
	}


	// 유저의 아이디 찾기 이메일 발송
	@RequestMapping(value = "/user/userIdEmailCheck", method = RequestMethod.POST)
	public String UserIdEmail(String email, Model model) {
		System.out.println("this");
		model.addAttribute("row", service.userIdEmail(email)); 

		return MODULE_NAME + "/userIdEmail_pro";
	}


	// 유저의 비밀번호 찾기에서 이메일 발송
	@RequestMapping(value = "/user/userPwEmailCheck", method = RequestMethod.POST)
	public String UserPwEmail(UserVO vo, Model model,HttpServletRequest request) {
		
		model.addAttribute("row", service.userPwEmail(vo,request));

		return MODULE_NAME+"/userPwEmail_pro";
	}


	// 비밀번호 찾기에서 발송한 키 값 확인
	@RequestMapping(value = "/user/userPwKey", method = RequestMethod.GET)
	public String UserPwKeyEmail() {
		
		return MODULE_NAME+"/userPwKey";
	}

	// 비밀번호 찾기에서 발송한 키 값 확인
	@RequestMapping(value = "/user/userPwKey", method = RequestMethod.POST)
	public String UserPwKeyEmail(String key,HttpServletRequest request,Model model) {
		model.addAttribute("row",service.userPwKey(key,request));
	
		return MODULE_NAME+"/userPwkey_pro";
	}
	

	// user의 pw를 찾기로 이동하는 문
	@RequestMapping(value = "/user/userPwChange", method = RequestMethod.GET)
	public String UserPwChangeForm() {
		
		return MODULE_NAME+"/userPwChange";
	}
	

	// 유저의 비밀번호를 DataBase에 저정하는 문
	@RequestMapping(value = "/user/userPwChange", method = RequestMethod.POST)
	public String UserPwChange(UserVO vo,Model model, HttpServletRequest request) {
		vo.setId((String)request.getSession().getAttribute("id"));
		vo.setPw(Sha256.encrypt(vo.getPw()));
		model.addAttribute("row",service.UserPwChange(vo,request));

		return MODULE_NAME+"/userPwChange_pro";
	}
}
