package com.plant.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.plant.user.mapper.UserMapper;

@Controller
public class TimeService {

	@Autowired
	private UserMapper mapper;

	public int UserTime(String id) throws Exception {
		int listTime = mapper.UserTimeCheck(id).getTime();

		return listTime;

	}

	public int userlogout(String id) {
		int row = mapper.UserLogout(id);
		return row;
	}

	public int usertime(String id) throws Exception {
		int listTime = mapper.UserTimeCheck(id).getTime();
		if (listTime != 0) {
			mapper.userTimeUpdate(id);
		}
		return listTime;
	}

	public String userlogin(String id) throws Exception {
		String loginch = mapper.UserLoginCheck(id).getLoginCh();

		return loginch;
	}

}
