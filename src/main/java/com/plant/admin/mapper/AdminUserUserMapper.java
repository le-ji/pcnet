package com.plant.admin.mapper;

import com.plant.admin.model.UserUseVO;

public interface AdminUserUserMapper {
	


	public UserUseVO userTimeCheck(int idx);

	// 회원의 시간 검색
	public Integer userTimeCnt(int idx);
	
	//시간 추가
	public Integer userTimeCharge(UserUseVO vo);
}
