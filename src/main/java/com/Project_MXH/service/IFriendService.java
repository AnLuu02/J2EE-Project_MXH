package com.Project_MXH.service;

import java.util.List;

import com.Project_MXH.model.FriendModel;
import com.Project_MXH.model.UserModel;

public interface IFriendService {
	List<UserModel> findUserFriends(UserModel userModel);

	List<UserModel> findUserFriendWaitingAccept(UserModel userModel);

	List<UserModel> findAllFriendsById(Long userID);

	void addFriends(UserModel userModel, Long userID, String state_add_fr);

	void deleteFriend(UserModel userModel, Long userID);

	void updateFriend(UserModel userModel, Long userID);
}
