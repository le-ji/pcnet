package com.plant.admin.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.plant.admin.mapper.AdminMapper;
import com.plant.admin.model.AdminVO;

@Service
public class AdminLoginService {

	@Inject
	private AdminMapper mapper;
	
	// Admin Login
	public Integer AdminLogin(AdminVO vo,HttpServletRequest request) {
		int row = mapper.AdminLogin(vo);
		if(row == 0) {
			row = 0 ; 
			request.getSession().setAttribute("adminId", vo.getId());
		}else {
			row = 1; 
		}
		return row;
	}

}
