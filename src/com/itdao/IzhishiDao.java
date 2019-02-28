package com.itdao;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public interface IzhishiDao {

	/*
	 * 用户知识积分的处理
	 */
	public void jf(int jf,String username)throws Exception;
	
	/*
	 * 获取用户当前积分
	 */
	public int jf(String username)throws Exception;
	
	/*
	 * 获取用户的知识排行
	 */
	public JSONArray paiHang()throws Exception;
	
	/*
	 * 获取当前用户的知识排行
	 */
	public JSONObject userPH(String username)throws Exception;
	
	/*
	 * 知识积分页面的用户积分获取
	 */
	public JSONObject userJF(String username)throws Exception;
	/*
	 * 知识积分页面的排行获取
	 */
	public JSONArray userJF()throws Exception;
}
