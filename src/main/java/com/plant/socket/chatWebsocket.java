package com.plant.socket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class chatWebsocket extends TextWebSocketHandler {

	private List<WebSocketSession> users;
	private Map<String, Object> userMap;

	public chatWebsocket() {
		users = new ArrayList<WebSocketSession>();
		userMap = new HashMap<String, Object>();

	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		users.add(session);
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		JSONObject object = new JSONObject(message.getPayload());
		String type = object.getString("type");

		if (type != null && type.equals("register")) {
			String user = object.getString("userid");
			userMap.put(user, session);
		} else {
			String target = object.getString("target");
			String userId = object.getString("userid");
			WebSocketSession ws = (WebSocketSession) userMap.get(target);

			String msg = object.getString("message");

			if (ws != null) {

				ws.sendMessage(new TextMessage(userId + "|" + msg));
			}
		}

	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		users.remove(session);

	}
}
