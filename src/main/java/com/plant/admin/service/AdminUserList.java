package com.plant.admin.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.admin.mapper.AdminUserMapper;
import com.plant.user.model.UserVO;

import net.webjjang.util.PageObject;

@Service
public class AdminUserList {
	
	@Autowired
	private AdminUserMapper mapper;
	
	// 유저 아이디
	public List<UserVO> UserList(PageObject pageObject){
	
		pageObject.setTotalRow(mapper.AdminUserTot(pageObject));
		List<UserVO> vo = mapper.AdminUserList(pageObject);
		String birth= null;
		String joindate = null;
		for(int x=0; x<vo.size(); x++) {
			birth = vo.get(x).getBirth().substring(0,12);
			joindate = vo.get(x).getJoinDate().substring(0,12);
		}
		
		
		return vo;
	}
	// 유저의 개수
	public Integer userCnts(PageObject pageObject){
		int userCnt = mapper.AdminUserTot(pageObject);
		return userCnt;
	}
	
	
	// 강제 로그아웃 
	public Integer UserLogout(HttpServletRequest request,String idx) {
		
		int row = mapper.AdminUserLogout(idx);
		if(row == 0) {
			row = 0;
		}else {
			row = 1; 
		}
		return row;
	}

}
