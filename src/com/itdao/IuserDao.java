package com.itdao;

import com.entity.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public interface IuserDao {

	/*
	 * �û���Ϣ������
	 */
	public void addUser(User user) throws Exception;
	
	/*
	 * �û���Ϣ�Ĳ鿴
	 */
	public JSONObject selectUser(String username) throws Exception;
	
	/*
	 * ��ѯ�������û���Ϣ
	 */
	
    public User selectUserOne(String name) throws Exception;
    
    /*
     * ��ѯ�û��Ƿ����
     */
    
    public boolean selectUserBoolean(String name,String pw) throws Exception;
	
    /*
     * ��ѯ�û����Ƿ����
     */
    public boolean selectUserBoolean(String name)throws Exception;
	/*
	 * �û���Ϣ���޸�
	 */
	public void updateUser(User user) throws Exception;
	
	/*
	 * ɾ���û��Ĺ���
	 */
	public void deleteUser(String userNumber,String userPassword) throws Exception;
	
	/*
	 * ��ȡ�û������˵��޵���Ϣ
	 */
	public int returnNum(String username) throws Exception;
	
	/*
	 * �޸��û������˵�����Ϣ
	 */
	public void updateNum(String username,int num)throws Exception;
	
	/*
	 * �޸����˵ĵ�������
	 */
	public void updateCeleGood(int id)throws Exception;
	
	/*
	 * �����û�ͷ��ķ���
	 */
	public String getUserImg(String username)throws Exception;
	/*
	 * ����û�ͷ��ķ���
	 */
	public void addUserImg(User user)throws Exception;
	
	/*
	 * ��ѯ������Ϣҳ���û�֪ʶ��Ϣ�ķ���
	 */
	public JSONObject getUserzhi(String username)throws Exception;
}
