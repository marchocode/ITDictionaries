package com.itimpl;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import com.itdao.IMessageZcDao;

/**
 * ������֤����
 * @author jiege
 *
 */
public class MessageImpl implements IMessageZcDao{
	
	/**
	 * ���Žӿ�
	 * String numberΪ�ֻ���
	 * int ymΪ��֤��
	 */
	@Override
	public  void message(String number, int ym) throws Exception {
		HttpClient client = new HttpClient();  
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");   
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//ͷ�ļ���ת��  
		NameValuePair[] data ={ new NameValuePair("Uid", "jie��"),new NameValuePair("Key", "d41d8cd98f00b204e980"),  
		new NameValuePair("smsMob",number),new NameValuePair("smsText","���װ����û� ��Ҫע�����֤���ǣ�"+ym)};  
		post.setRequestBody(data);  
		  
		client.executeMethod(post);  
		Header[] headers = post.getResponseHeaders();  
		int statusCode = post.getStatusCode();  
		System.out.println("statusCode:"+statusCode);  
		for(Header h : headers)  
		{  
		System.out.println(h.toString());  
		}  
		String result = new String(post.getResponseBodyAsString().getBytes("gbk"));   
		System.out.println(result); //��ӡ������Ϣ״̬   
		post.releaseConnection();  
	}
}
