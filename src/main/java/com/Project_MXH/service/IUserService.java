package com.Project_MXH.service;

import java.util.List;

import com.Project_MXH.model.UserModel;

public interface IUserService {
	List<UserModel> findAll(UserModel userModel);

	UserModel findUser(String username, String password);

	UserModel findUserProfile(UserModel userModel);

	UserModel findUserById(Long userID);

	Long insertUser(UserModel userModel);
	Long updateProfile(Long userID, UserModel formUntil);

	void deleteInvitation(UserModel userModel, Long userID);

	Long uploadImg(Long userID, Long post_id, String url,String category);
	Long deleteImg(Long userID);
	Long uploadWallImg(Long userID, Long post_id, String url,String category);
	Long deleteWallImg(Long userID);

}
