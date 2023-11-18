package com.Project_MXH.model;

public class FriendModel extends AbstractModel<FriendModel> {

	private long user_id;
	private long friend_id;
	private String state_accept;

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public long getFriend_id() {
		return friend_id;
	}

	public void setFriend_id(long friend_id) {
		this.friend_id = friend_id;
	}

	public String getState_accept() {
		return state_accept;
	}

	public void setState_accept(String state_accept) {
		this.state_accept = state_accept;
	}



}
