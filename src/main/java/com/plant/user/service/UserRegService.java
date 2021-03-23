package com.plant.user.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.plant.user.mapper.UserMapper;
import com.plant.user.model.UserVO;

@Service
public class UserRegService {
	
	@Inject
	private UserMapper mapper;
	private SqlSessionTemplate userSqlSessin;

	
	//ȸ�� ����
	public Integer UserReg(UserVO vo) {
		int row = mapper.UserReg(vo);
		if(row != 0) {
			row = 1; //�α��� ����  
		}else {
			row = 0; // �α��� ����
		}
		return row;
	}
	// ajax�� �̿��� �˻�
	public int userIdCheck(String id) {

		return mapper.userIdCheck(id);
	}



}
