package com.Project_MXH.SocketRealtime;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.Project_MXH.model.UserModel;
import com.Project_MXH.utils.HttpSessionConfigurator;

@ServerEndpoint(value = "/friend", configurator = HttpSessionConfigurator.class)

public class AddFriend {
	
	static Set<Session> sessions = Collections.synchronizedSet(new HashSet<>());

	@OnOpen
	public void onOpen(Session session, EndpointConfig config) {
		HttpSession httpSession = (HttpSession) config.getUserProperties().get(HttpSession.class.getName());
		UserModel userModel = new UserModel();
		// Kiểm tra trạng thái đăng nhập của người dùng
		if (httpSession != null && httpSession.getAttribute("USERMODEL") != null) {
			userModel = (UserModel) httpSession.getAttribute("USERMODEL");
			sessions.add(session);
		} else {
			System.out.println("error1");

		}
	}

	@OnMessage
	public void onMessage(String message, Session session) {
		for (Session s : sessions) {
			if (s != session) {
				try {
					s.getBasicRemote().sendText(message);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@OnClose
	public void onClose(Session session) {
		sessions.remove(session);
	}

	@OnError
	public void onError(Session session, Throwable throwable) {
	}
}
