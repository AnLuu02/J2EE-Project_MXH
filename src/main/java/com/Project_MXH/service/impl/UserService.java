package com.Project_MXH.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.Project_MXH.dao.IUserDAO;
import com.Project_MXH.model.UserModel;
import com.Project_MXH.service.IUserService;

public class UserService implements IUserService {

	@Inject
	private IUserDAO userDAO;

	@Override
	public List<UserModel> findAll(UserModel userModel) {
		return userDAO.findAll(userModel);
	}

	@Override
	public UserModel findUser(String username, String password) {
		return userDAO.findUser(username, password);
	}

	@Override
	public Long insertUser(UserModel userModel) {
		return userDAO.insertUser(userModel);
	}

	@Override
	public void deleteInvitation(UserModel userModel, Long userID) {
		userDAO.deleteInvitation(userModel, userID);

	}

	@Override
	public UserModel findUserById(Long userID) {
		return userDAO.findUserById(userID);
	}

	@Override
	public UserModel findUserProfile(UserModel userModel) {
		return userDAO.findUserProfile(userModel);

	}

	@Override
	public Long uploadImg(Long userID, Long post_id, String url,String category) {
		return userDAO.uploadImg(userID, post_id, url,category);
	}

	@Override
	public Long deleteImg(Long userID) {
		return userDAO.deleteImg(userID);
	}
	@Override
	public Long uploadWallImg(Long userID, Long post_id, String url,String category) {
		return userDAO.uploadWallImg(userID, post_id, url,category);
	}

	@Override
	public Long deleteWallImg(Long userID) {
		return userDAO.deleteWallImg(userID);
	}

	@Override
	public Long updateProfile(Long userID, UserModel formUntil) {
		return userDAO.updateProfile(userID, formUntil);
	}
}
