package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.user.model.UserVO;
import com.plant.user.service.Sha256;
import com.plant.user.service.UserModifyservice;

@Controller
public class UserModifyController {

	@Autowired
	private UserModifyservice service;
	
	private final String MODULE_NAME = "user";

	// 유저의 비밀번호 확인
	@RequestMapping(value="/user/userModifyPwCheck", method = RequestMethod.GET)
	public String userModifyPwForm() {
		return MODULE_NAME+"/userModifyPwCheck";
	}

	// 비빌먼호 확인
	@RequestMapping(value="/user/userModifyPwCheck", method = RequestMethod.POST)
	public String userModifyPw(UserVO vo, HttpServletRequest request,Model model) {
		
		vo.setId((String)request.getSession().getAttribute("id"));
		vo.setPw(Sha256.encrypt(vo.getPw()));
		model.addAttribute("row",service.userModifyPwCheck(vo));
		
		return MODULE_NAME+"/userModifyPwCheck_pro";
	}
	

	// 유저의 정보 수정 창  
	@RequestMapping(value="/user/userModify", method = RequestMethod.GET)
	public String userModifyForm(HttpServletRequest request,Model model) {
		
		model.addAttribute("vo",service.userModify(request));
		
		return MODULE_NAME+"/userModify";
	}
	

	// 유저의 정보 수정 처리 문
	@RequestMapping(value="/user/userModify", method = RequestMethod.POST)
	public String userModify(UserVO vo,Model model) {
		
		model.addAttribute("row",service.userModifypro(vo));
		
		return MODULE_NAME+"/userModify_pro";
	}
}
