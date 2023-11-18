package com.Project_MXH.dao;

import java.util.List;

import com.Project_MXH.model.FriendModel;
import com.Project_MXH.model.UserModel;
import com.mysql.cj.jdbc.Blob;

public interface IUserDAO extends GenericDAO<UserModel> {
	List<UserModel> findAll(UserModel userModel);
	UserModel findUser(String username, String password);
	UserModel findUserProfile(UserModel userModel); // bug
	UserModel findUserById(Long userID);
	Long insertUser(UserModel userModel);
	void deleteInvitation(UserModel userModel, Long userID);
	
	Long uploadImg(Long userID, Long post_id, String url,String category);
	Long deleteImg(Long userID);
	Long uploadWallImg(Long userID, Long post_id, String url,String category);
	Long deleteWallImg(Long userID);

	Long updateProfile(Long userID,UserModel formUntil);


}
