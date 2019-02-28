package com.main;

import com.entity.User;
import com.itdao.ISouDao;
import com.itdao.IXiaoxiIfo;
import com.itdao.IuserDao;
import com.itimpl.SouImpl;
import com.itimpl.UploadxiaoImpl;
import com.itimpl.UserImpl;

import net.sf.json.JSONArray;

public class Test {


public static void main(String[] args) {
	
	
	ISouDao souDao = new SouImpl();
JSONArray json;
try {
	json = souDao.getJg("Çø");
	for (int i = 0; i < json.size(); i++) {
		
		System.out.println(json.getJSONObject(i).getString("kid")+
				"  and  "
		+json.getJSONObject(i).getString("kt"));
			
		}
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}



}

	
		
	
}
