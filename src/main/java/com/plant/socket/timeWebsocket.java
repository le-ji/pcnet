package com.plant.socket;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.plant.user.mapper.UserMapper;
import com.plant.user.model.UserTimeVO;
import com.plant.user.service.TimeService;

public class timeWebsocket extends TextWebSocketHandler {

	@Autowired
	private TimeService service;

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		String id = message.getPayload();
		long StartTime = new Date().getTime();

		while (true) {
			long endtime = new Date().getTime() + 60000;
			long lasttime = (endtime - StartTime) / 60000;
			// 유저의 로그인 여부
			String logincheck = service.userlogin(id);

			if (logincheck.equals("0")) {
				String msg = "00:00";
				String msg2 = "00:00";
				String msg3 = "0";
				session.sendMessage(new TextMessage(msg + "|" + msg2 + "|" + msg3));
				break;
			} else {
				String msg = timeFormatter(service.UserTime(id));
				String msg2 = timeFormatter(lasttime);
				String msg3 = "1";
				session.sendMessage(new TextMessage(msg + "|" + msg2 + "|" + msg3));
			}

		}


	}

	protected String timeFormatter(long time) {
		String answer = (time / 60 < 10) ? "0" : "";
		answer += time / 60 + ":";
		if (time % 60 < 10) {
			answer += "0";
		}
		answer += time % 60;
		return answer;
	}
}
