package com.plant.user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.plant.user.mapper.UserMapper;
import com.plant.user.model.UserVO;

@Service
public class UserInfo {
	
	@Inject
	private UserMapper mapper;
	
	public UserVO UserInfo(HttpServletRequest request) {
		String id = (String)request.getSession().getAttribute("id"); 
		UserVO vo = mapper.UserInfo(id);
		
		return vo;
	}
}
