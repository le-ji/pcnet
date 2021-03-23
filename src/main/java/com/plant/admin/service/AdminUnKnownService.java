package com.plant.admin.service;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.admin.mapper.UnknownMapper;

@Service
public class AdminUnKnownService {
	@Autowired
	private UnknownMapper mapper;
	
	public StringBuffer Random() {
		
		Random random =new Random();

		StringBuffer randomId =new StringBuffer();

		for(int i=0;i<4;i++){
		    if(random.nextBoolean()){
		    	randomId.append((char)((int)(random.nextInt(26))+97));
		    }else{
		    	randomId.append((random.nextInt(10)));
		    }
		}
		return randomId;
	}
	
	public Integer UnknownIdReg(String loginnum) {

		int row = mapper.UnknownIdReg(loginnum);
		return row;
		
	}

}
