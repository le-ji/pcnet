package com.plant.socket;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;


import com.plant.user.service.TimeService;

public class timeUpdateWebsocket extends TextWebSocketHandler {

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
		while (true) {
			System.out.println("업데이트 문");
			int login = service.usertime(id);
			System.out.println("login : "+ login);
			String msg = login + "";
			session.sendMessage(new TextMessage(msg));
			try {
				Thread.sleep(60000);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}


}
