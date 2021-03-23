package com.plant.user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import com.plant.user.mapper.UserMapper;

@Controller
public class UserLogoutService {

	@Inject
	private UserMapper mapper;
	
	public Integer UserLogout(String id, HttpServletRequest request) {

		int row= mapper.UserLogout(id);
		
		if(row != 0) {
			int logoutTime = mapper.UserLogoutTime(id);
			if(logoutTime != 0) {
				request.getSession().removeAttribute("id");
				row =1; //����
			}else {
				row = 0; // �α׾ƿ� ����
			}
			
		}else {
			row = 0; // �α׾ƿ� ����
		}
		return row;
	}
	
}
