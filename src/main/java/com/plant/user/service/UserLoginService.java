package com.plant.user.service;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.user.mapper.UserMapper;
import com.plant.user.model.UserVO;

@Service
public class UserLoginService {

	@Autowired
	private UserMapper mapper;

	public Integer UserLogin(UserVO vo, HttpServletRequest request) {
		System.out.println("LoginService : " + vo.getId());
		UserVO add = mapper.UserLogin(vo);

		int row = 0;
		if (null != add) {

			String dt = add.getDt();
			if (dt.equals("0")) {
				// 로그인 부분에서 걸리는 문제 
				// sql에서 나오는 값?
				// 데이터 타입은?
				
				LocalDateTime date = LocalDateTime.now();
				int yy = Integer.parseInt(add.getBirth().substring(0, 4));
				int dateyy = Integer.parseInt(date.toString().substring(0, 4));
				int datetime = Integer.parseInt(date.toString().substring(11, 13));
				int age = (dateyy - yy) + 1;
				if (age < 20) {
					if (datetime >= 20 || datetime <= 9) {
						row = 3; // 청소년 입장 불가
					} else {
						int time = add.getTime();
						if (time == 0) {
							row = 0; // 남은 시간 없음
						} else {
							int loginTime = mapper.UserLoginTime(add.getId());
							if (loginTime == 1) {
								row = 1; // 로그인 성공
								request.getSession().setAttribute("id", vo.getId());
							} else {
								row = 2; // 아이디 일치 X
							}
						}
					}
				} else {
					int time = add.getTime();
					if (time == 0) {
						row = 0; // 남은 시간 없음
					} else {
						int loginTime = mapper.UserLoginTime(vo.getId());
						if (loginTime == 1) {
							row = 1; // 로그인 성공
							request.getSession().setAttribute("id", vo.getId());

						} else {
							row = 2; // 아이디 일치 X
						}
					}
				}
			} else {
				row = -1;// 블랙리스트
			}
		} else {
			row = 2; // 아이디 비번 오류
		}
		return row;
	}

}
