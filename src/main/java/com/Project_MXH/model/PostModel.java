package com.Project_MXH.model;

public class PostModel extends AbstractModel<PostModel> {

	private long user_id;
	private String content;
	private String url_image_post;
	private long like_count;
	private long shared_post_id;

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getLike_count() {
		return like_count;
	}

	public void setLike_count(long like_count) {
		this.like_count = like_count;
	}

	public long getShared_post_id() {
		return shared_post_id;
	}

	public void setShared_post_id(long shared_post_id) {
		this.shared_post_id = shared_post_id;
	}

	public String getUrl_image_post() {
		return url_image_post;
	}

	public void setUrl_image_post(String url_image_post) {
		this.url_image_post = url_image_post;
	}

}
