package com.itdao;

public interface IMessageZcDao {

	/*
	 * 实现用户短信注册功能
	 */
	
	public void message(String number,int ym) throws Exception;
	
}
