package com.plant.user.service;

import java.util.Random;

import javax.inject.Inject;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.plant.user.mapper.UserMapper;
import com.plant.user.model.UserVO;

@Service
public class UserIdPwSearchService {

	@Autowired
	private JavaMailSender mailSender;

	@Inject
	private UserMapper mapper;

	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}

	// ������ �̿��� Ű ����
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	// ���̵� �߼�
	public Integer userIdEmail(String email) {
		String id = mapper.UserIdEmailCheck(email).getId();
		System.out.println("id"+id);
		int row = 0;
		if (id != null) {
			MimeMessage mail = mailSender.createMimeMessage();
			String htmlStr = "<h2>영진 PC방입니다.</h2><br><br>" + "<h3> <p>회원님의 아이디 발송입니다. " + id
					+ "</p>" + "(모든것은 허상입니다.)";
			try {
				mail.setSubject("[아이디 발송] 영진 PC방입니다.", "utf-8");
				mail.setText(htmlStr, "utf-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(email));
				mailSender.send(mail);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			row = 1;

		} else {
			row = 0; 
		}

		return row;
	}

	// ��й�ȣ ���� ���� �߼�
	public Integer userPwEmail(UserVO vo, HttpServletRequest request) {
		int row = mapper.UserPwEmail(vo);
		if (row == 1) {
			String key = getKey(false, 20);
			request.getSession().setAttribute("key", key);
			request.getSession().setAttribute("id", vo.getId());
			MimeMessage mail = mailSender.createMimeMessage();
			String htmlStr =  "<h2>영진 PC방입니다.</h2><br><br>" + "<h3> <p>회원님의 비밀번호 인증 입니다. " + vo.getId()+"님의 코드는"+key
					+ "</p>" + "(모든것은 허상입니다.)";
			try {
				mail.setSubject("[비밀번호 확인 인증 메일] 영진 PC방입니다.", "utf-8");
				mail.setText(htmlStr, "utf-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(vo.getEmail()));
				mailSender.send(mail);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			row = 1;// ���̵� �߼�

		} else {
			row = 0; // ��ġ �ϴ� ���� ����
		}
		return row;
	}

	// key Ȯ��
	public Integer userPwKey(String key, HttpServletRequest request) {

		String Pwkey = (String) request.getSession().getAttribute("key");
		System.out.println(key);
		System.out.println(Pwkey);

		int row = 0;

		if (Pwkey.equals(key)) {
			row = 1; // ��ġ
			request.getSession().removeAttribute("key");
		} else {
			row = 0; // ����ġ
			request.getSession().removeAttribute("key");
		}
		System.out.println(row);

		return row;
	}

	// pw ���湮
	public Integer UserPwChange(UserVO vo, HttpServletRequest request) {
		int row = mapper.UserPwChange(vo);
		String id = (String) request.getSession().getAttribute("id");
		if (id != null) {
			if (row != 1) {
				row = 0; // ����
				request.getSession().removeAttribute("id");
			} else {
				row = 1; // ����
				request.getSession().removeAttribute("id");
			}
		} else {
			row = 2; // ���� �ð� ��
		}

		return row;
	}

}
