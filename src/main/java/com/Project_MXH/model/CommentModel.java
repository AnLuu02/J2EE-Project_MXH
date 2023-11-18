package com.Project_MXH.model;

public class CommentModel extends AbstractModel<CommentModel> {

	private String content;
	private long like_comment;
	private long post_id;
	private long user_comment_id;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getLike_comment() {
		return like_comment;
	}

	public void setLike_comment(long like_comment) {
		this.like_comment = like_comment;
	}

	public long getPost_id() {
		return post_id;
	}

	public void setPost_id(long post_id) {
		this.post_id = post_id;
	}

	public long getUser_comment_id() {
		return user_comment_id;
	}

	public void setUser_comment_id(long user_comment_id) {
		this.user_comment_id = user_comment_id;
	}

}
