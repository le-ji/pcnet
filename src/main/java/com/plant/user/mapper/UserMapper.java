package com.plant.user.mapper;


import java.util.List;

import com.plant.user.model.UserTimeVO;
import com.plant.user.model.UserVO;


public interface UserMapper {
	
	
	public Integer UserReg(UserVO vo);
	
	public UserVO UserLogin(UserVO vo);
	
	public Integer UserLoginTime(String id);
	
	public Integer UserLogout(String id);
	
	public Integer UserLogoutTime(String id);
	
	public Integer UserModify(UserVO vo);
	
	public Integer UserDelete(String id);
	// ����������
	public UserVO UserInfo(String id);
	// ajax ���̵� üũ
	public int userIdCheck(String id);
	// ȸ�� ���� ���� form
	public UserVO UserModifyForm(String id);
	// ȸ������ ���� �� id PW üũ
	public Integer UserModifyPwCheck(UserVO vo);
	// �̸��� üũ �� => id�� �̸��Ϸ� �߼�
	public UserVO UserIdEmailCheck(String email);
	// ���̵� �̸��� üũ
	public Integer UserPwEmail(UserVO vo);
	// ��� �ٲٱ�
	public Integer UserPwChange(UserVO vo);
	// �ǽð� �α��� üũ
	public UserVO UserLoginCheck(String id) throws Exception;
	//유저의 시간 업데이트
	public void userTimeUpdate(String id) throws Exception;
	//유저의 시간 가져오기
	public UserTimeVO UserTimeCheck(String id) throws Exception;


}
