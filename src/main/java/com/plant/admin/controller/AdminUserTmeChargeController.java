package com.plant.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plant.admin.model.UserUseVO;
import com.plant.admin.service.AdminUserTimeChargeService;

@Controller
public class AdminUserTmeChargeController {

	@Autowired
	private AdminUserTimeChargeService service;
	
	private String MODULE_NAME="admin";
	//회원의 남은 시간 표시
	@RequestMapping(value="admin/adminUserTime", method=RequestMethod.GET)
	public String userTime(int idx,Model model) {
		model.addAttribute("vo",service.userTimeCheck(idx));
		return MODULE_NAME+"/admin_User_Time";
	}

	@RequestMapping(value="admin/adminUserTime", method=RequestMethod.POST)
	public String userTimePro(UserUseVO vo,Model model) {

		model.addAttribute("row",service.userTimeCharge(vo));
		return MODULE_NAME+"/admin_User_Time_pro";
	}
}
