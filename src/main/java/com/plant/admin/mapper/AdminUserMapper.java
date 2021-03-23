package com.plant.admin.mapper;

import java.util.List;

import com.plant.user.model.UserVO;

import net.webjjang.util.PageObject;

public interface AdminUserMapper {
	
	// 회원 리스트
	public List<UserVO> AdminUserList(PageObject pageObject);
	//회원 리스트 카운트
	public Integer AdminUserTot(PageObject pageObject);
	// 강제 로그아웃
	public Integer AdminUserLogout(String idx);

}
