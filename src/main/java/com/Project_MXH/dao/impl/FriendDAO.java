package com.Project_MXH.dao.impl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.Project_MXH.Mapper.UserMapper;
import com.Project_MXH.dao.IFriendDAO;
import com.Project_MXH.model.FriendModel;
import com.Project_MXH.model.UserModel;

public class FriendDAO extends AbstractDAO<FriendModel> implements IFriendDAO {
	@Override
	public List<UserModel> findUserFriends(UserModel userModel) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
		sql.append(" LEFT JOIN friends AS fr ON u.id = fr.friend_id AND fr.user_id = ?");
		sql.append(" WHERE u.roleid = 2");
		return query(sql.toString(), new UserMapper(), userModel.getId());
	}

	@Override
	public List<UserModel> findUserFriendWaitingAccept(UserModel userModel) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
		sql.append(" LEFT JOIN friends AS fr ON u.id = fr.friend_id AND fr.user_id = ?");
		sql.append(" WHERE u.roleid = 2 AND fr.state_accept = 'accepted'");
		return query(sql.toString(), new UserMapper(), userModel.getId());
	}

	@Override
	public List<UserModel> findAllFriendsById(Long userID) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
		sql.append(" LEFT JOIN friends AS fr ON u.id = fr.friend_id AND fr.state_accept = 'friend'");
		sql.append(" WHERE fr.user_id = ? AND u.roleid = 2");
		return query(sql.toString(), new UserMapper(), userID);
	}

	@Override
	public void deleteFriend(UserModel userModel, Long userID) {
		String sql = "DELETE FROM friends WHERE user_id = ? AND friend_id = ? AND state_accept = 'friend'";
		update(sql, userModel.getId(), userID);
		update(sql, userID, userModel.getId());

	}

	@Override
	public void updateFriend(UserModel userModel, Long userID) {
		String sql = "UPDATE friends SET state_accept = 'friend' WHERE user_id = ? AND friend_id = ?";
		update(sql, userModel.getId(), userID);
		update(sql, userID, userModel.getId());
	}

	@Override
	public void addFriends(UserModel userModel, Long userID, String state_add_fr) {
		String sql = "INSERT INTO friends (user_id,friend_id,state_accept,createddate) VALUES (?,?,?,?)";
		Date createDate = new Date();
		Timestamp timestamp = new Timestamp(createDate.getTime());
		insert(sql, userModel.getId(), userID, state_add_fr, timestamp);
		if (state_add_fr.equals("waiting")) {
			state_add_fr = "accepted";
			insert(sql, userID, userModel.getId(), state_add_fr, timestamp);
		}
	}
}
