package com.itdao;

import com.entity.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public interface IuserDao {

	/*
	 * 用户信息的增加
	 */
	public void addUser(User user) throws Exception;
	
	/*
	 * 用户信息的查看
	 */
	public JSONObject selectUser(String username) throws Exception;
	
	/*
	 * 查询单独的用户信息
	 */
	
    public User selectUserOne(String name) throws Exception;
    
    /*
     * 查询用户是否存在
     */
    
    public boolean selectUserBoolean(String name,String pw) throws Exception;
	
    /*
     * 查询用户名是否存在
     */
    public boolean selectUserBoolean(String name)throws Exception;
	/*
	 * 用户信息的修改
	 */
	public void updateUser(User user) throws Exception;
	
	/*
	 * 删除用户的功能
	 */
	public void deleteUser(String userNumber,String userPassword) throws Exception;
	
	/*
	 * 获取用户的名人点赞的信息
	 */
	public int returnNum(String username) throws Exception;
	
	/*
	 * 修改用户的名人点赞信息
	 */
	public void updateNum(String username,int num)throws Exception;
	
	/*
	 * 修改名人的点赞数量
	 */
	public void updateCeleGood(int id)throws Exception;
	
	/*
	 * 返回用户头像的方法
	 */
	public String getUserImg(String username)throws Exception;
	/*
	 * 添加用户头像的方法
	 */
	public void addUserImg(User user)throws Exception;
	
	/*
	 * 查询个人信息页面用户知识信息的方法
	 */
	public JSONObject getUserzhi(String username)throws Exception;
}
