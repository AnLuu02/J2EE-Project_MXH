package com.Project_MXH.model;

import java.sql.Date;

public class UserModel extends AbstractModel<UserModel> {
	// name user
	private String first_name;
	private String last_name;
	private String full_name;
	private String display_name;

	private String email;
	private String password;
	private String gender;
	private String hobbies;
	private String study_at;
	private String education;
	private String about;
	// birthday
	private String date_birth;
	private String month_birth;
	private String year_birth;
	private Date date_of_birth;
	private String country;
	private String occupation;
	private String phone_number;

	private String avatar_url;
	private String wall_img_url;
	private int roleid;
	private RoleModel role = new RoleModel();
	private FriendModel friend = new FriendModel();

	public String getFull_name() {
		if (full_name != null) {
			return full_name;
		}
		return first_name + " " + last_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public RoleModel getRole() {
		return role;
	}

	public void setRole(RoleModel role) {
		this.role = role;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAvatar_url() {
		return avatar_url;
	}

	public void setAvatar_url(String avatar_url) {
		this.avatar_url = avatar_url;
	}

	public String getStudy_at() {
		return study_at;
	}

	public void setStudy_at(String study_at) {
		this.study_at = study_at;
	}

	public Date getDate_of_birth() {
		if (this.date_of_birth != null) {
			return date_of_birth;
		}
		String birthDay = this.getYear_birth() + "-" + this.getMonth_birth() + "-" + this.getDate_birth();
		Date date = Date.valueOf(birthDay);
		setDate_of_birth(date);
		return date_of_birth;

	}

	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getDate_birth() {
		return date_birth;
	}

	public void setDate_birth(String date_birth) {
		this.date_birth = date_birth;
	}

	public String getMonth_birth() {
		return month_birth;
	}

	public void setMonth_birth(String month_birth) {
		this.month_birth = month_birth;
	}

	public String getYear_birth() {
		return year_birth;
	}

	public void setYear_birth(String year_birth) {
		this.year_birth = year_birth;
	}

	public FriendModel getFriend() {
		return friend;
	}

	public void setFriend(FriendModel friend) {
		this.friend = friend;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getDisplay_name() {
		if (display_name != null) {
			return display_name;

		}
		return this.getFull_name();
	}

	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}

	public String getWall_img_url() {
		return wall_img_url;
	}

	public void setWall_img_url(String wall_img_url) {
		this.wall_img_url = wall_img_url;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

}
