package com.Project_MXH.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.Project_MXH.dao.IFriendDAO;
import com.Project_MXH.model.FriendModel;
import com.Project_MXH.model.UserModel;
import com.Project_MXH.service.IFriendService;

public class FriendService implements IFriendService {

	@Inject
	private IFriendDAO friendDAO;

	@Override
	public List<UserModel> findUserFriends(UserModel userModel) {

		return friendDAO.findUserFriends(userModel);
	}

	@Override
	public List<UserModel> findUserFriendWaitingAccept(UserModel userModel) {

		return friendDAO.findUserFriendWaitingAccept(userModel);
	}

	@Override
	public List<UserModel> findAllFriendsById(Long userID) {
		return friendDAO.findAllFriendsById(userID);
	}
	@Override
	public void addFriends(UserModel userModel, Long userID, String state_add_fr) {
		friendDAO.addFriends(userModel, userID, state_add_fr);
	}
	@Override
	public void deleteFriend(UserModel userModel, Long userID) {
		friendDAO.deleteFriend(userModel, userID);

	}
	@Override
	public void updateFriend(UserModel userModel, Long userID) {
		friendDAO.updateFriend(userModel, userID);

	}
}
