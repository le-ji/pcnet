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

	// ȸ������ ����
	public UserVO userModify(HttpServletRequest request) {
		String id = (String) request.getSession().getAttribute("id");
		UserVO vo = mapper.UserModifyForm(id);

		return vo;
	}

	// ���� �� id pw üũ
	public Integer userModifyPwCheck(UserVO vo) {

		int row = mapper.UserModifyPwCheck(vo);
		System.out.println("�ƴ� �ù� �� ?"+row);
		if(row != 0) {
			row = 1; // ȸ�� ���� O
		}else {
			row = 0;// ȸ�� X
		}
		System.out.println("�� ���? ��� �ʹ�"+row);

		return row;
	}
	// ���� ��
	public Integer userModifypro(UserVO vo) {
		vo.setPw(Sha256.encrypt(vo.getPw()));
		int row = mapper.UserModify(vo);
		if(row == 1) {
			row = 1; // ���� ����
		}else {
			row=0; // ���� ����
		}
		return row;
	}
	
}

