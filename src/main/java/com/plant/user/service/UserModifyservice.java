package com.plant.user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.plant.user.mapper.UserMapper;
import com.plant.user.model.UserVO;

@Service
public class UserModifyservice {
	@Inject
	private UserMapper mapper;

	// 회원정보 수정
	public UserVO userModify(HttpServletRequest request) {
		String id = (String) request.getSession().getAttribute("id");
		UserVO vo = mapper.UserModifyForm(id);

		return vo;
	}

	// 수정 전 id pw 체크
	public Integer userModifyPwCheck(UserVO vo) {

		int row = mapper.UserModifyPwCheck(vo);
		System.out.println("아니 시발 왜 ?"+row);
		if(row != 0) {
			row = 1; // 회원 존재 O
		}else {
			row = 0;// 회원 X
		}
		System.out.println("야 우냐? 울고 싶다"+row);

		return row;
	}
	// 수정 문
	public Integer userModifypro(UserVO vo) {
		vo.setPw(Sha256.encrypt(vo.getPw()));
		int row = mapper.UserModify(vo);
		if(row == 1) {
			row = 1; // 수정 성공
		}else {
			row=0; // 수정 실패
		}
		return row;
	}
	
}

