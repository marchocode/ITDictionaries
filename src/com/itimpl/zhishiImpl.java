package com.itimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.itdao.IzhishiDao;
import com.tool.MysqlLianJie;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class zhishiImpl implements IzhishiDao{

	@Override
	public void jf(int jf,String username) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		String sql = "update knowledgeifo set knowledgeIntegral = '"+jf+"' ,knowledgeYesNumber = '"+jf+"'"
				+ " where username = '"+username+"'";
		MysqlLianJie.sta.executeUpdate(sql);
		jfcz(username);
	}
	
	
	public void jfcz(String username) {
		
		try {
			MysqlLianJie.sql();
			String sql = "select knowledgeifo.knowledgeIntegral from knowledgeifo where username = ?";
		PreparedStatement pre =	MysqlLianJie.con.prepareStatement(sql);
		pre.setString(1, username);
		MysqlLianJie.re = pre.executeQuery();
		while(MysqlLianJie.re.next()) {
			int jf = MysqlLianJie.re.getInt("knowledgeIntegral");
			if (jf<500) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '青铜' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}
			
			else if (jf>500 && jf<1000) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '白银' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}else if (jf>1000 && jf<2000) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '黄金' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}else if (jf>2000 && jf<5000) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '白金' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}else if (jf>5000 && jf<10000) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '钻石' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}else if (jf>10000 && jf<20000) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '大师' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}else if (jf>20000) {
				MysqlLianJie.sql();
				String sql1 = "update knowledgeifo set knowledgeParagraphN = '王者' where username = '"+username+"'";
				MysqlLianJie.sta.executeUpdate(sql1);
			}
		}
		
		MysqlLianJie.sqlreClose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


	@Override
	public int jf(String username) throws Exception {
		// TODO Auto-generated method stub
		int jf = 0;
		MysqlLianJie.sql();
		String sql = "select knowledgeifo.knowledgeIntegral from knowledgeifo where username = ? ";
PreparedStatement pre =	MysqlLianJie.con.prepareStatement(sql);
		pre.setString(1, username);
		MysqlLianJie.re = pre.executeQuery();
		while(MysqlLianJie.re.next()) {
			jf = MysqlLianJie.re.getInt("knowledgeIntegral");
		}
		return jf;
	}


	@Override
	public JSONArray paiHang() throws Exception {
		// TODO Auto-generated method stub
		JSONArray json = new JSONArray();
		MysqlLianJie.sql();
		String sql = "select userifo.img,knowledgeifo.username,knowledgeifo.knowledgeIntegral,"
				+ "knowledgeifo.knowledgeParagraphN from userifo,knowledgeifo where userifo.username = knowledgeifo.username"
				+ " order by knowledgeifo.knowledgeIntegral DESC";
	MysqlLianJie.re = MysqlLianJie.sta.executeQuery(sql);
	while(MysqlLianJie.re.next()) {
		
		String zhi = "{img:'"+MysqlLianJie.re.getString("img")+"',"
				    + "name:'"+MysqlLianJie.re.getString("username")+"',"
				    + "jf:'"+MysqlLianJie.re.getInt("knowledgeIntegral")+"',"
				    + "dw:'"+MysqlLianJie.re.getString("knowledgeParagraphN")+"'}";
		json.add(zhi);
	}
	
		return json;
	}


	@Override
	public JSONObject userPH(String username) throws Exception {
		// TODO Auto-generated method stub
		JSONObject json = new JSONObject();
		MysqlLianJie.sql();
		String sql =  "select userifo.img,knowledgeifo.username,knowledgeifo.knowledgeIntegral,"
				+ "knowledgeifo.knowledgeParagraphN from userifo,knowledgeifo where userifo.username = knowledgeifo.username"
				+ " and knowledgeifo.username = '"+username+"'";
	MysqlLianJie.re = MysqlLianJie.sta.executeQuery(sql);
	while(MysqlLianJie.re.next()) {

		json.put("img", MysqlLianJie.re.getString("img"));
		json.put("name",MysqlLianJie.re.getString("username"));
		json.put("jf", MysqlLianJie.re.getInt("knowledgeIntegral"));
		json.put("dw", MysqlLianJie.re.getString("knowledgeParagraphN"));
	}
		return json;
	}


	@Override
	public JSONObject userJF(String username) throws Exception {
		// TODO Auto-generated method stub
		JSONObject json = new JSONObject();
		MysqlLianJie.sql();
		String sql = "select userifo.img,userifo.gxqm,knowledgeifo.* from userifo,knowledgeifo "
				+ "where userifo.username = knowledgeifo.username "
				+ "and knowledgeifo.username = '"+username+"'";
		MysqlLianJie.re = MysqlLianJie.sta.executeQuery(sql);
		while(MysqlLianJie.re.next()) {
	        json.put("img", MysqlLianJie.re.getString("img"));
	        json.put("gxqm",MysqlLianJie.re.getString("gxqm"));
			json.put("name",MysqlLianJie.re.getString("username"));
			json.put("jf",MysqlLianJie.re.getInt("knowledgeIntegral"));
			json.put("dd",MysqlLianJie.re.getInt("knowledgeYesNumber"));
			json.put("dwN", MysqlLianJie.re.getString("knowledgeParagraphN"));
			json.put("dwS", MysqlLianJie.re.getString("knowledgeParagraphS"));
		}
		
		return json;
	}


	@Override
	public JSONArray userJF() throws Exception {
		// TODO Auto-generated method stub
		JSONArray json = new JSONArray();
		MysqlLianJie.sql();
		String sql = "select knowledgeifo.username,knowledgeifo.knowledgeIntegral "
				+ "from knowledgeifo"
				+ " order by knowledgeifo.knowledgeIntegral DESC";
	MysqlLianJie.re = MysqlLianJie.sta.executeQuery(sql);
	while(MysqlLianJie.re.next()) {
		
		String zhi = "{name:'"+MysqlLianJie.re.getString("username")+"',"
				    + "jf:'"+MysqlLianJie.re.getInt("knowledgeIntegral")+"'}";
		json.add(zhi);
	}
	
		return json;
	}

}
