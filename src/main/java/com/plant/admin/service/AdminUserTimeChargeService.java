package com.plant.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.admin.mapper.AdminUserUserMapper;
import com.plant.admin.model.UserUseVO;

@Service
public class AdminUserTimeChargeService {

	@Autowired
	private AdminUserUserMapper mapper;


	// 유저의 시간 체크
	public UserUseVO userTimeCheck(int idx) {
		int row = mapper.userTimeCnt(idx);
		UserUseVO vo = new UserUseVO();

		if (row == 0) {
			vo.setIdx(idx);
			vo.setTime(0);
		} else {
			vo = mapper.userTimeCheck(idx);
		}
		return vo;
	}
	
	//

	// 시간 추기
	public Integer userTimeCharge(UserUseVO vo) {


		int cnt = mapper.userTimeCharge(vo);
		int row = 0;
		if (cnt == 1) {
			row = 1;
		} else {
			row = 0;
		}
		return row;
	}

}
