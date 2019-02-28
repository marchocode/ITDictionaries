package com.entity;

public class News {

	private String username;
	
	private String imgpath;
	
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

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
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

	public News(String username, String imgpath, String text, int goodifo, int commentUserID, int shareUser) {
		super();
		this.username = username;
		this.imgpath = imgpath;
		this.text = text;
		this.goodifo = goodifo;
		this.commentUserID = commentUserID;
		this.shareUser = shareUser;
	}

	public News(String username, String imgpath, int goodifo, int commentUserID, int shareUser) {
		super();
		this.username = username;
		this.imgpath = imgpath;
		this.goodifo = goodifo;
		this.commentUserID = commentUserID;
		this.shareUser = shareUser;
	}

	public News(String username, String text) {
		super();
		this.username = username;
		this.text = text;
	}




	
	
}
