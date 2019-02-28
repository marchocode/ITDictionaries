package com.entity;

public class Video {

	private String username;
	
	private String path;
	
	private String text;
	
	private int goodifo;
	
	private int commentUserID;
	
	private int shareUser;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getGoodifo() {
		return goodifo;
	}

	public void setGoodifo(int goodifo) {
		this.goodifo = goodifo;
	}

	public int getCommentUserID() {
		return commentUserID;
	}

	public void setCommentUserID(int commentUserID) {
		this.commentUserID = commentUserID;
	}

	public int getShareUser() {
		return shareUser;
	}

	public void setShareUser(int shareUser) {
		this.shareUser = shareUser;
	}

	public Video(String username, String path, String text, int goodifo, int commentUserID, int shareUser) {
		super();
		this.username = username;
		this.path = path;
		this.text = text;
		this.goodifo = goodifo;
		this.commentUserID = commentUserID;
		this.shareUser = shareUser;
	}

	public Video(String username, String text) {
		super();
		this.username = username;
		this.text = text;
	}

	public Video(String username, String path, int goodifo, int commentUserID, int shareUser) {
		super();
		this.username = username;
		this.path = path;
		this.goodifo = goodifo;
		this.commentUserID = commentUserID;
		this.shareUser = shareUser;
	}
	
	
}
