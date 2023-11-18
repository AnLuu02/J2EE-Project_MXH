package com.Project_MXH.dao;

import java.util.List;

import com.Project_MXH.model.FriendModel;
import com.Project_MXH.model.UserModel;

public interface IFriendDAO extends GenericDAO<FriendModel> {
	List<UserModel> findUserFriends(UserModel userModel);// Lấy danh sách gợi ý kết bạn bao gồm chưa gửi lời mời và đã
															// gửi lời mời

	List<UserModel> findUserFriendWaitingAccept(UserModel userModel);

	List<UserModel> findAllFriendsById(Long userID); // Lấy danh sách bạn bè

	void addFriends(UserModel userModel, Long userID, String state_add_fr);

	void deleteFriend(UserModel userModel, Long userID);
	
	void updateFriend(UserModel userModel, Long userID);
}
