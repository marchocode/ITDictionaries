package com.itdao;

import com.entity.Cooment;

import com.entity.News;


import net.sf.json.JSONArray;

public interface IXiaoxiIfo {

	/*
	 * 用于添加图片的方法
	 */
	public void uploadXiao(News news)throws Exception;
	
	/*
	 * 用于添加文字的方法
	 */
	public void uploadXiaoT(News news)throws Exception;
	
	/*
	 * 用于返回用户说说的方法
	 */
	public JSONArray getXiaoXi()throws Exception;
	
	/*
	 * 用于用户点赞的方法
	 */
	public void alterGood(int num,int id)throws Exception; 
	
	/*
	 * 用于查看用户是否点过赞
	 */
	public boolean goodIfoT(int id,String name)throws Exception;
	
	/*
	 * 用于添加用户点赞信息
	 */
	public void addGoodifoU(int id,String username)throws Exception;
	
	/*
	 * 用来删除用户点赞信息
	 */
	public void deleteGoodifoU(int id,String username)throws Exception;
	/*
	 * 用于返回用户点赞的方法
	 */
	public int getGoodifo(int id)throws Exception;
	/*
	 * 用于添加用户评论的方法
	 */
	public void addComment(Cooment cooment)throws Exception;
	/*
	 * 查看当前所有用户评论的方法
	 */
	public JSONArray getComment(int id)throws Exception;
	/*
	 * 用于用户分享的方法
	 */
	public void addFx(int id,String username)throws Exception;
	
	/*
	 * 返回当前用户的所有说说
	 */
	public JSONArray getXiaoXiU(String username)throws Exception;

}
