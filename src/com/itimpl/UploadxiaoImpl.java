package com.itimpl;

import java.sql.PreparedStatement;


import com.entity.Cooment;
import com.entity.News;
import com.itdao.IXiaoxiIfo;
import com.itdao.IuserDao;
import com.tool.MysqlLianJie;

import net.sf.json.JSONArray;

public class UploadxiaoImpl implements IXiaoxiIfo{
	News newsf;
	IuserDao userdao = new UserImpl();
	@Override
	public void uploadXiao(News news) throws Exception {
		// TODO Auto-generated method stub
		int num = 1;
		MysqlLianJie.sql();
		
		String sql = "insert into news (username,imgifo,"
				+ "goodifo,commentUserID,shareUser,commentn)"
				+" values ('"+news.getUsername()+"','"+news.getImgpath()+"'"
						+ ",'"+news.getGoodifo()+"'"
					    + ",'"+news.getCommentUserID()+"'"
					    + ",'"+news.getShareUser()+"'"
					    		+ ",'"+(comtn()+num)+"')";
		MysqlLianJie.sta.executeUpdate(sql);
		
		
	}
	
	public int comtn() {
		
		int com = 0;
		
		try {
			MysqlLianJie.sql();
			
			String sql = "select news.commentn from news;";
			
			MysqlLianJie.re = MysqlLianJie.sta.executeQuery(sql);
			
			while(MysqlLianJie.re.next()) {
				
				com = MysqlLianJie.re.getInt("commentn");
				
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return com;
		
		
	}

	@Override
	public void uploadXiaoT(News news) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		String sql = "update news set textifo = '"+news.getText()+"' where username = '"+news.getUsername()+"'";
		MysqlLianJie.sta.executeUpdate(sql);
	}

	@Override
	public JSONArray getXiaoXi() throws Exception {
		// TODO Auto-generated method stub
		JSONArray jsonArray = new JSONArray();
		MysqlLianJie.sql();
	MysqlLianJie.re = MysqlLianJie.sta.executeQuery("select userifo.img,news.*  from userifo,news where userifo.username = news.username order by commentn DESC");
	while(MysqlLianJie.re.next()) {
		
	String re = "{name:'"+MysqlLianJie.re.getString("username")+"',"
			+ "imgt:'"+MysqlLianJie.re.getString("img")+"',"
			+ "img:'"+MysqlLianJie.re.getString("imgifo")+"',"
			+ "text:'"+MysqlLianJie.re.getString("textifo")+"',"
			+ "good:'"+MysqlLianJie.re.getInt("goodifo")+"',"
			+ "comment:'"+MysqlLianJie.re.getInt("commentUserID")+"',"
			+ "fenx:'"+MysqlLianJie.re.getInt("shareUser")+"',"
		    + "num:'"+MysqlLianJie.re.getInt("commentn")+"'}";
	
	jsonArray.add(re);
		
	}
		return jsonArray;
	}

	@Override
	public void alterGood(int num,int id) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		MysqlLianJie.sta.executeUpdate("update news set goodifo = '"+(getNumG(id)+num)+"' where commentn = '"+id+"'");
	}

	@Override
	public boolean goodIfoT(int id,String name) throws Exception {
		// TODO Auto-generated method stub
		boolean a = false;
		MysqlLianJie.sql();
		String sql = "select goodifo.username from goodifo where id = ?";
	PreparedStatement prm =	MysqlLianJie.con.prepareStatement(sql);
		prm.setInt(1, id);
	MysqlLianJie.re = prm.executeQuery();
		while(MysqlLianJie.re.next()) {
			
			if (MysqlLianJie.re.getString("username").equals(name)) {
				a = true;
			}
		}

		return a;
	}
	
	
	public int getNumG(int id) {
		int id1 = 0;
		try {
			MysqlLianJie.sql();
			String sql = "select news.goodifo from news where commentn = ?";
			PreparedStatement pre =	MysqlLianJie.con.prepareStatement(sql);
			pre.setInt(1, id);
			MysqlLianJie.re = pre.executeQuery();
			while(MysqlLianJie.re.next()) {
				
				id1 = MysqlLianJie.re.getInt("goodifo");
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	return id1;
		
	}

	@Override
	public void addGoodifoU(int id, String username) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		MysqlLianJie.sta.executeUpdate("insert into goodifo (id,username)"
				+ " values('"+id+"','"+username+"')");
	}

	@Override
	public void deleteGoodifoU(int id, String username) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		MysqlLianJie.sta.executeUpdate("delete from goodifo where id = '"+id+"' and username = '"+username+"' ;");
	}

	@Override
	public int getGoodifo(int id) throws Exception {
		// TODO Auto-generated method stub
		return getNumG(id);
	}

	@Override
	public void addComment(Cooment cooment) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		MysqlLianJie.sta.executeUpdate("insert into commentuser (commentUserID,username,comment)"
				+ " values('"+cooment.getId()+"','"+cooment.getUsername()+"','"+cooment.getComment()+"')");
		MysqlLianJie.sql();
		MysqlLianJie.sta.executeUpdate("update news set commentUserID = '"+(getCommentUserID(cooment.getId())+1)+"' where commentn = '"+cooment.getId()+"'");
	}

	@Override
	public JSONArray getComment(int id) throws Exception {
		// TODO Auto-generated method stub
		JSONArray json = new JSONArray();
		MysqlLianJie.sql();
	PreparedStatement pre =	MysqlLianJie.con.prepareStatement("select * from commentuser where commentUserID = ? order by id DESC");
	pre.setInt(1, id);
MysqlLianJie.re = pre.executeQuery();
			while(MysqlLianJie.re.next()) {
				String username1 = MysqlLianJie.re.getString("username");
				String value = "{id:'"+MysqlLianJie.re.getInt("commentUserID")+"',"
						       + "username:'"+username1+"',"
							+ "comment:'"+MysqlLianJie.re.getString("comment")+"'}";
				
				json.add(value);
			}
	return json;
	}

	@Override
	public void addFx(int id,String username) throws Exception {
		// TODO Auto-generated method stub
		
		MysqlLianJie.sql();
		String sql = "select * from news where commentn = ?;";
		PreparedStatement pre = MysqlLianJie.con.prepareStatement(sql);
		pre.setInt(1, id);
	MysqlLianJie.re = pre.executeQuery();
	while(MysqlLianJie.re.next()) {
		
		newsf = new News(username, MysqlLianJie.re.getString("imgifo"),
				MysqlLianJie.re.getString("textifo"),
				0,0, 0);
		
	}
	String sql2 = "update news set shareUser = '"+(getShareUserN(id)+1)+"' where commentn = '"+id+"'";
	MysqlLianJie.sta.executeUpdate(sql2);
	int num = 1;
	String sql1 = "insert into news (username,imgifo,textifo,"
			+ "goodifo,commentUserID,shareUser,commentn)"
			+" values ('"+newsf.getUsername()+"','"+newsf.getImgpath()+"'"
					+ ",'"+newsf.getText()+"'"
					+ ",'"+newsf.getGoodifo()+"'"
				    + ",'"+newsf.getCommentUserID()+"'"
				    + ",'"+newsf.getShareUser()+"'"
				    + ",'"+(comtn()+num)+"')";
	
MysqlLianJie.sql();	
		MysqlLianJie.sta.executeUpdate(sql1);
		
	}

	public int getShareUserN(int id) {
		int num = 0;
		try {
			MysqlLianJie.sql();
			String sql = "select news.shareUser from news where commentn = ?;";
			PreparedStatement pre =	MysqlLianJie.con.prepareStatement(sql);
			pre.setInt(1, id);
			MysqlLianJie.re = pre.executeQuery();
			while(MysqlLianJie.re.next()) {
				num = MysqlLianJie.re.getInt("shareUser");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
	return num;
	}
	
	public int getCommentUserID(int id) {
		
		int num = 0;
		try {
			MysqlLianJie.sql();
			String sql = "select news.commentUserID from news where commentn = ?;";
			PreparedStatement pre =	MysqlLianJie.con.prepareStatement(sql);
			pre.setInt(1, id);
			MysqlLianJie.re = pre.executeQuery();
			while(MysqlLianJie.re.next()) {
				num = MysqlLianJie.re.getInt("commentUserID");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
	return num;
	}

	@Override
	public JSONArray getXiaoXiU(String username) throws Exception {
		// TODO Auto-generated method stub
		JSONArray jsonArray = new JSONArray();
		MysqlLianJie.sql();
	MysqlLianJie.re = MysqlLianJie.sta.executeQuery("select userifo.img,news.*  from userifo,news where userifo.username = news.username and news.username = '"+username+"' order by commentn DESC");
	while(MysqlLianJie.re.next()) {
		
	String re = "{name:'"+MysqlLianJie.re.getString("username")+"',"
			+ "imgt:'"+MysqlLianJie.re.getString("img")+"',"
			+ "img:'"+MysqlLianJie.re.getString("imgifo")+"',"
			+ "text:'"+MysqlLianJie.re.getString("textifo")+"',"
			+ "good:'"+MysqlLianJie.re.getInt("goodifo")+"',"
			+ "comment:'"+MysqlLianJie.re.getInt("commentUserID")+"',"
			+ "fenx:'"+MysqlLianJie.re.getInt("shareUser")+"',"
		    + "num:'"+MysqlLianJie.re.getInt("commentn")+"'}";
	
	jsonArray.add(re);
		
	}
		return jsonArray;
	
	}
}
