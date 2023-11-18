package com.Project_MXH.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.Project_MXH.Mapper.UserMapper;
import com.Project_MXH.dao.IUserDAO;
import com.Project_MXH.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

	@Override
	public List<UserModel> findAll(UserModel userModel) {
		String sql = "";
		if (userModel != null) {
			sql = "SELECT * FROM user WHERE roleid = 2 AND email != ?";
			return query(sql, new UserMapper(), userModel.getEmail());
		} else {
			sql = "SELECT * FROM user WHERE roleid = 2";
			return query(sql, new UserMapper());
		}
	}

	@Override
	public Long insertUser(UserModel userModel) {
		String sql = "INSERT INTO user (full_name,display_name,email, password, gender, date_of_birth) VALUES (?,?,?,?,?,?)";
		return insert(sql, userModel.getFull_name(), userModel.getDisplay_name(), userModel.getEmail(),
				userModel.getPassword(), userModel.getGender(), userModel.getDate_of_birth());
	}

	@Override
	public UserModel findUser(String username, String password) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		List<UserModel> users = new ArrayList<>();
		if (password != null) {
			sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
			sql.append(" WHERE email = ? AND password = ?");
			users = query(sql.toString(), new UserMapper(), username, password);
		} else {
			sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
			sql.append(" WHERE email = ? ");
			users = query(sql.toString(), new UserMapper(), username);

		}
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public UserModel findUserProfile(UserModel userModel) {
		List<UserModel> users = new ArrayList<>();
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
		sql.append(" LEFT JOIN friends AS fr ON u.id = fr.friend_id");
		sql.append(" WHERE u.roleid = 2 AND u.id = ?");
		users = query(sql.toString(), new UserMapper(), userModel.getId());
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public void deleteInvitation(UserModel userModel, Long userID) {
		String sql = "DELETE FROM friends WHERE user_id = ? AND friend_id = ?";
		update(sql, userModel.getId(), userID);
		update(sql, userID, userModel.getId());

	}

	@Override
	public UserModel findUserById(Long userID) {
		List<UserModel> users = new ArrayList<>();
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
		sql.append(" WHERE u.id = ? ");
		users = query(sql.toString(), new UserMapper(), userID);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long uploadImg(Long userID, Long post_id, String url, String category) {
		String sql1 = "UPDATE user SET avatar_url = ? WHERE id = ?";
		update(sql1, url, userID);
		String sql = "INSERT INTO photos (user_id,post_id, url,category) VALUES (?,?,?,?)";
		return insert(sql, userID, post_id, url, category);
	}

	@Override
	public Long deleteImg(Long userID) {
		String sql1 = "UPDATE user SET avatar_url = null WHERE id = ?";
		update(sql1, userID);
		String sql = "DELETE FROM photos WHERE user_id = ? AND category='avatar'";
		update(sql, userID);
		return 1L;
	}

	@Override
	public Long uploadWallImg(Long userID, Long post_id, String url, String category) {
		String sql1 = "UPDATE user SET wall_img_url = ? WHERE id = ?";
		update(sql1, url, userID);
		String sql = "INSERT INTO photos (user_id,post_id, url,category) VALUES (?,?,?,?)";
		return insert(sql, userID, post_id, url, category);
	}

	@Override
	public Long deleteWallImg(Long userID) {
		String sql1 = "UPDATE user SET wall_img_url = null WHERE id = ?";
		update(sql1, userID);
		String sql = "DELETE FROM photos WHERE user_id = ? AND category = 'wall_img'";
		update(sql, userID);
		return 1L;
	}

	@Override
	public Long updateProfile(Long userID, UserModel formUntil) {
		StringBuilder sql = new StringBuilder("UPDATE user AS u SET");
		List<String> params = new ArrayList<>();

		if (formUntil.getEmail() != null && !formUntil.getEmail().equals("")) {
			sql.append(" email = ?");
			params.add(formUntil.getEmail());

		}
		if (formUntil.getFull_name() != null && !formUntil.getFull_name().equals("")) {
			sql.append(", full_name = ?");
			params.add(formUntil.getFull_name());
		}
		if (formUntil.getDisplay_name() != null && !formUntil.getDisplay_name().equals("")) {
			sql.append(", display_name = ?");
			params.add(formUntil.getDisplay_name());

		}
		if (formUntil.getGender() != null && !formUntil.getGender().equals("")) {
			sql.append(", gender = ?");
			params.add(formUntil.getGender());

		}
		if (formUntil.getHobbies() != null && !formUntil.getHobbies().equals("[]")) {
			sql.append(", hobbies = ?");
			params.add(formUntil.getHobbies());
		}
		if (formUntil.getStudy_at() != null && !formUntil.getStudy_at().equals("")) {
			sql.append(", study_at = ?");
			params.add(formUntil.getStudy_at());

		}
		if (formUntil.getEducation() != null && !formUntil.getEducation().equals("")) {
			sql.append(", education = ?");
			params.add(formUntil.getEducation());

		}
		if (formUntil.getAbout() != null && !formUntil.getAbout().equals("")) {
			sql.append(", about = ?");
			params.add(formUntil.getAbout());

		}
		if (formUntil.getDate_of_birth() != null && !formUntil.getDate_of_birth().toString().equals("")) {
			sql.append(", date_of_birth = ?");
			params.add(formUntil.getDate_of_birth().toString());
		}
		if (formUntil.getCountry() != null && !formUntil.getCountry().equals("")) {
			sql.append(", country = ?");
			params.add(formUntil.getCountry());

		}
		if (formUntil.getOccupation() != null && !formUntil.getOccupation().equals("")) {
			sql.append(", occupation = ?");
			params.add(formUntil.getOccupation());

		}
		if (formUntil.getPhone_number() != null && !formUntil.getPhone_number().equals("")) {
			sql.append(", phone_number = ?");
			params.add(formUntil.getPhone_number());
		}
		sql.append(" WHERE u.id = ? ");
		System.out.println("params: " + params);
		update(sql.toString(), params, userID);
		return 1L;
	}
}
