package com.itdao;

import com.entity.Cooment;

import com.entity.News;


import net.sf.json.JSONArray;

public interface IXiaoxiIfo {

	/*
	 * �������ͼƬ�ķ���
	 */
	public void uploadXiao(News news)throws Exception;
	
	/*
	 * ����������ֵķ���
	 */
	public void uploadXiaoT(News news)throws Exception;
	
	/*
	 * ���ڷ����û�˵˵�ķ���
	 */
	public JSONArray getXiaoXi()throws Exception;
	
	/*
	 * �����û����޵ķ���
	 */
	public void alterGood(int num,int id)throws Exception; 
	
	/*
	 * ���ڲ鿴�û��Ƿ�����
	 */
	public boolean goodIfoT(int id,String name)throws Exception;
	
	/*
	 * ��������û�������Ϣ
	 */
	public void addGoodifoU(int id,String username)throws Exception;
	
	/*
	 * ����ɾ���û�������Ϣ
	 */
	public void deleteGoodifoU(int id,String username)throws Exception;
	/*
	 * ���ڷ����û����޵ķ���
	 */
	public int getGoodifo(int id)throws Exception;
	/*
	 * ��������û����۵ķ���
	 */
	public void addComment(Cooment cooment)throws Exception;
	/*
	 * �鿴��ǰ�����û����۵ķ���
	 */
	public JSONArray getComment(int id)throws Exception;
	/*
	 * �����û�����ķ���
	 */
	public void addFx(int id,String username)throws Exception;
	
	/*
	 * ���ص�ǰ�û�������˵˵
	 */
	public JSONArray getXiaoXiU(String username)throws Exception;

}
