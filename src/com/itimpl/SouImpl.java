package com.itimpl;

import java.sql.PreparedStatement;

import com.itdao.ISouDao;
import com.tool.MysqlLianJie;

import net.sf.json.JSONArray;

public class SouImpl implements ISouDao{

	@Override
	public JSONArray getJg(String sou) throws Exception {
		// TODO Auto-generated method stub
		JSONArray jsonArray = new JSONArray();
		MysqlLianJie.sql();
		String sql = "select * from knowledgedata where knowledgeDataTitle like ? ";
PreparedStatement pre =	 MysqlLianJie.con.prepareStatement(sql);
		pre.setString(1, "%" + sou + "%");
		MysqlLianJie.re = pre.executeQuery();
		while(MysqlLianJie.re.next()) {
			
			String kn = "{kid:'"+MysqlLianJie.re.getInt("knowledgeDataID")+"',"
					+ "kt:'"+MysqlLianJie.re.getString("knowledgeDataTitle")+"',"
					+ "kj:'"+MysqlLianJie.re.getString("knowledgeDataJ")+"'}";
			
			jsonArray.add(kn);
		}
		
		MysqlLianJie.sql();
		String sql1 = "select celebrity.celebrityID,celebrity.celebrityname,"
				+ "celebrityifo.celebrityIntroduce from celebrity" + 
				",celebrityifo where celebrity.celebrityID = "
				+ "celebrityifo.celebrityID  and celebrityname like ?";
				
		PreparedStatement pre1 = MysqlLianJie.con.prepareStatement(sql1);
		pre1.setString(1, "%" + sou + "%");
		MysqlLianJie.re = pre1.executeQuery();	
		while(MysqlLianJie.re.next()) {
			
			String mr = "{mrid:'"+MysqlLianJie.re.getInt("celebrityID")+"',"
					+ "mrn:'"+MysqlLianJie.re.getString("celebrityname")+"',"
					+ "mrj:'"+MysqlLianJie.re.getString("celebrityIntroduce")+"'}";
			
			jsonArray.add(mr);
		}
		
		MysqlLianJie.sql();
		String sql2 = "SELECT information.zixunID,information.zixuntitle,"
				+ "information.zixunbody from information where zixuntitle like ?";
		PreparedStatement pre2 = MysqlLianJie.con.prepareStatement(sql2);
		pre2.setString(1, "%" + sou + "%");
		MysqlLianJie.re = pre2.executeQuery();			
		while(MysqlLianJie.re.next()) {
			
			String zx = "{zid:'"+MysqlLianJie.re.getInt("zixunID")+"',"
					+ "zt:'"+MysqlLianJie.re.getString("zixuntitle")+"',"
					+ "zj:'"+MysqlLianJie.re.getString("zixunbody")+"'}";
			
			jsonArray.add(zx);
		}	
		
		return jsonArray;
	}

	
	
}
