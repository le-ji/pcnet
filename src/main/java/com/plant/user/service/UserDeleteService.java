package com.plant.user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.plant.user.mapper.UserMapper;

@Service
public class UserDeleteService {

	@Inject
	private UserMapper mapper;
	
	
	public int userDelete(HttpServletRequest request) {
		String id = (String)request.getSession().getAttribute("id");
		int row = mapper.UserDelete(id);
		if(row == 1) {
			row =1;
			request.getSession().removeAttribute("id");
			
		}else {
			row =0; 
		}
		
		
		return row;
	}

}
