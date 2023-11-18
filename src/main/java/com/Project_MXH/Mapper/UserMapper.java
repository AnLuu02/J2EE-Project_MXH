package com.Project_MXH.Mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import com.Project_MXH.model.FriendModel;
import com.Project_MXH.model.RoleModel;
import com.Project_MXH.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel user = new UserModel();
			user.setId(resultSet.getLong("id"));
			user.setFull_name(resultSet.getString("full_name"));
			user.setDisplay_name(resultSet.getString("display_name"));
			user.setEmail(resultSet.getString("email"));
			user.setPassword(resultSet.getString("password"));
			user.setGender(resultSet.getString("gender"));
			user.setHobbies(resultSet.getString("hobbies"));
			user.setStudy_at(resultSet.getString("study_at"));
			user.setEducation(resultSet.getString("education"));
			user.setAbout(resultSet.getString("about"));
			user.setDate_of_birth(resultSet.getDate("date_of_birth"));
			user.setAvatar_url(resultSet.getString("avatar_url"));
			user.setWall_img_url(resultSet.getString("wall_img_url"));
			user.setRoleid(resultSet.getInt("roleid"));
			user.setCountry(resultSet.getString("country"));
			user.setOccupation(resultSet.getString("occupation"));
			user.setPhone_number(resultSet.getString("phone_number"));
			user.setCreatedDate(resultSet.getTimestamp("createddate"));
			user.setModifiedDate(resultSet.getTimestamp("modifieddate"));
			user.setCreatedBy(resultSet.getString("createdby"));
			user.setModifiedBy(resultSet.getString("modifiedby"));
			try {
				RoleModel role = new RoleModel();
				role.setName(resultSet.getString("name"));
				role.setCode(resultSet.getString("code"));
				user.setRole(role);
			} catch (SQLException e) {
//				System.out.println(e.getMessage());
			}
			try {
				FriendModel friend = new FriendModel();
				friend.setState_accept(resultSet.getString("state_accept"));
				friend.setUser_id(resultSet.getLong("user_id"));
				friend.setFriend_id(resultSet.getLong("friend_id"));
				user.setFriend(friend);
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			return user;
		} catch (SQLException e) {
			return null;
		}
	}

}
