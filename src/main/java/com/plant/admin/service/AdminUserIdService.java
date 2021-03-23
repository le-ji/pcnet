package com.plant.admin.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.admin.mapper.UserRandomPwMapper;
import com.plant.user.model.UserVO;

@Service
public class AdminUserIdService {

	@Autowired
	private UserRandomPwMapper mapper;
	
	
	public StringBuffer randomPw() {
		Random random =new Random();

		StringBuffer randomPw =new StringBuffer();

		for(int i=0;i<6;i++){
		    if(random.nextBoolean()){
		    	randomPw.append((char)((int)(random.nextInt(26))+97));
		    }else{
		    	randomPw.append((random.nextInt(10)));
		    }
		}
		
		return randomPw;
	}
	
	public Integer random_logincode(UserVO vo) {
		
		int row = mapper.random_loginPwUpdate(vo);
		
		if(row == 1) {
			row = 1; 
		}else {
			row = 0; 
		}
		
		
		return row;
	}

}
