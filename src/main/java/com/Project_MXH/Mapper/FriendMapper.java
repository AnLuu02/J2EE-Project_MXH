package com.Project_MXH.Mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import com.Project_MXH.model.FriendModel;

public class FriendMapper implements RowMapper<FriendModel> {

	@Override
	public FriendModel mapRow(ResultSet resultSet) {
		try {
			FriendModel friend = new FriendModel();
			friend.setId(resultSet.getLong("id"));
			friend.setUser_id(resultSet.getLong("user_id"));
			friend.setFriend_id(resultSet.getLong("friend_id"));
			friend.setState_accept(resultSet.getString("state_accept"));
			return friend;
		} catch (SQLException e) {
			return null;
		}
	}

}
