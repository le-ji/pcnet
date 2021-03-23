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

@Service
public class UserEmailSendService {

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

	
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	
	public void mailSendWithUserKey(String email, String id, HttpServletRequest request) {

		String key = getKey(false, 20);
		request.getSession().setAttribute("key", key);
		System.out.println(key);
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>영진 PC방입니다.</h2><br><br>" + "<h3> <p>회원가입 key발송입니다. " + key
				+ "</p>" + "(모든것은 허상입니다.)";
		try {
			mail.setSubject("영진 PC방입니다.", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}

	// ���̵� ã�� �߼� �̸���(����Ű �߼�)
	public void mailSendIdUserKey(String email, HttpServletRequest request) {

		String key = getKey(false, 20);
		request.getSession().setAttribute("key", key);
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>영진 PC방입니다.</h2><br><br>" + "<h3> <p>회원님의 아이디 key발송입니다. " + key
				+ "</p>" + "(모든것은 허상입니다.)";
		try {
			mail.setSubject("영진 PC방입니다.", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}

	// ���̵� ã�� �߼� �̸���(����Ű �߼�)
	public Integer mailSendPwUserKey(String email, String id, HttpServletRequest request) {

		int row = mapper.UserLogout(id);
		if (row != 0) {
			String key = getKey(false, 20);
			request.getSession().setAttribute("key", key);
			MimeMessage mail = mailSender.createMimeMessage();
			String htmlStr = "<h2>영진 PC방입니다.</h2><br><br>" + "<h3> <p>회원패스워드 key발송입니다. " + key
					+ "</p>" + "(모든것은 허상입니다.)";
			try {
				mail.setSubject("영진 PC방입니다.", "utf-8");
				mail.setText(htmlStr, "utf-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(email));
				mailSender.send(mail);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			row = 1; // �߼�
		} else {
			row = 0; // ���̵� ����ġ
		}
		return row;
	}

	public int userRegEmailcheckPro(String key,HttpServletRequest request) {
		String Emailkey = (String)request.getSession().getAttribute("key");

		int row = 0;
		if(Emailkey.equals(key)) {
			row = 1; 
			request.getSession().removeAttribute("key");
		}else {
			row = 0;
		}
		return row;
	}
}
