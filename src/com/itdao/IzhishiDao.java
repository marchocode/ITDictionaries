package com.itdao;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public interface IzhishiDao {

	/*
	 * �û�֪ʶ���ֵĴ���
	 */
	public void jf(int jf,String username)throws Exception;
	
	/*
	 * ��ȡ�û���ǰ����
	 */
	public int jf(String username)throws Exception;
	
	/*
	 * ��ȡ�û���֪ʶ����
	 */
	public JSONArray paiHang()throws Exception;
	
	/*
	 * ��ȡ��ǰ�û���֪ʶ����
	 */
	public JSONObject userPH(String username)throws Exception;
	
	/*
	 * ֪ʶ����ҳ����û����ֻ�ȡ
	 */
	public JSONObject userJF(String username)throws Exception;
	/*
	 * ֪ʶ����ҳ������л�ȡ
	 */
	public JSONArray userJF()throws Exception;
}
