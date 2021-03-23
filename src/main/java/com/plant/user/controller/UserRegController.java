package com.plant.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.plant.user.model.UserVO;
import com.plant.user.service.Sha256;
import com.plant.user.service.UserRegService;

@Controller
public class UserRegController {

	@Autowired
	private UserRegService UserRegService;

	private final String MODULE_NAME = "user";


	// 회원 가입 창
	@RequestMapping(value = "/user/userReg", method = RequestMethod.GET)
	public String UserRegForm() {

		return MODULE_NAME + "/userReg";
	}


	// 회원가입 처리
	@RequestMapping(value ="/user/userReg", method = RequestMethod.POST)
	public String UserRegForm(UserVO vo, HttpServletRequest request, RedirectAttributes rttr) {
		System.out.println("userIDREGDATE : "+vo.getId());
		String encryPassword = Sha256.encrypt(vo.getPw());
		System.out.println("encryPassword : "+encryPassword);
		vo.setPw(encryPassword);
		rttr.addFlashAttribute("row", UserRegService.UserReg(vo));

		/* return MODULE_NAME + "/userReg_pro"; */
		return "redirect:"+MODULE_NAME+"/userReg_pro";
	}
	
	// Ajax를 이용한 아이디 중복 체크
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		return UserRegService.userIdCheck(id);
	}

}
