package com.itimpl;

import java.sql.PreparedStatement;

import java.util.ArrayList;
import com.entity.User;
import com.itdao.IuserDao;
import com.tool.MysqlLianJie;

import net.sf.json.JSONObject;

public class UserImpl implements IuserDao{

	String img;
	
	@Override
	public void addUser(User user) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		
	String	sql = "insert into userifo (username,password,phone) values('"+user.getName()+"','"+user.getPassword()+"','"+user.getPhone()+"')";
		
	
		MysqlLianJie.sta.executeUpdate(sql);
		
		
	}

	@Override
	public JSONObject selectUser(String username) throws Exception {
		// TODO Auto-generated method stub
		JSONObject jsonObject = new JSONObject();
		MysqlLianJie.sql();
		String sql = "select * from userifo where username = ?";
	PreparedStatement pre =	MysqlLianJie.con.prepareStatement(sql);
	pre.setString(1, username);
MysqlLianJie.re = pre.executeQuery();
	while(MysqlLianJie.re.next()) {
		jsonObject.put("username", MysqlLianJie.re.getString("username"));
		jsonObject.put("email", MysqlLianJie.re.getString("email"));
		jsonObject.put("age", MysqlLianJie.re.getString("age"));
		jsonObject.put("sex", MysqlLianJie.re.getString("sex"));
		jsonObject.put("gxqm", MysqlLianJie.re.getString("gxqm"));
		jsonObject.put("city", MysqlLianJie.re.getString("city"));
		jsonObject.put("phone", MysqlLianJie.re.getString("phone"));
		jsonObject.put("img", MysqlLianJie.re.getString("img"));
	
	}
		return jsonObject;
	}

	@Override
	public User selectUserOne(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean selectUserBoolean(String name, String pw) throws Exception {
		// TODO Auto-generated method stub
	
	boolean a = false;	
		
		MysqlLianJie.sql();
		
		String sql = "select * from userifo where username = ? and password = ?;";
		
java.sql.PreparedStatement	psm = MysqlLianJie.con.prepareStatement(sql);

		psm.setString(1, name);
		
		psm.setString(2, pw);

	MysqlLianJie.re = psm.executeQuery();
		
	if(MysqlLianJie.re.next()) {
		
		a = true;
		
	}
		
		return a;
	}

	@Override
	public boolean selectUserBoolean(String name) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateUser(User user) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		String sql = "update userifo set password = '"+user.getPassword()+"',"
				+ "age = '"+user.getAge()+"',"
				+ "sex = '"+user.getSex()+"',"
				+ "city = '"+user.getCity()+"',"
			    + "email = '"+user.getEmail()+"',"
			    + "gxqm = '"+user.getGxqm()+"' "
			    + "where username = '"+user.getName()+"';";
		MysqlLianJie.sta.executeUpdate(sql);
		
		
		
	}

	@Override
	public void deleteUser(String userNumber, String userPassword) throws Exception {
		// TODO Auto-generated method stub
		
	}
/*
 * 获取用户名人点赞的信息
 */
	@Override
	public int returnNum(String username) throws Exception {
		// TODO Auto-generated method stub
		int num = 0;
		
		MysqlLianJie.sql();
		
		String sql = "select  userifo.celebrityid from userifo where username = ?";
		
	java.sql.PreparedStatement psm = MysqlLianJie.con.prepareStatement(sql);
		
		psm.setString(1, username);
		
		MysqlLianJie.re = psm.executeQuery();
		
		while(MysqlLianJie.re.next()) {
			
			num = MysqlLianJie.re.getInt("celebrityid");
		}
		
		return num;
	}

	/*
	 * 修改用户的名人点赞信息
	 */
	@Override
	public void updateNum(String username,int num) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		
		String sql = "update userifo set celebrityid = ? where username = ?";
		
	PreparedStatement psm =	MysqlLianJie.con.prepareStatement(sql);
	
		psm.setInt(1, num);
		
		psm.setString(2, username);
		
		psm.executeUpdate();
	}

	/*
	 *修改名人的点赞信息
	 */
	@Override
	public void updateCeleGood(int id) throws Exception {
		// TODO Auto-generated method stub
		
		int nn = 0;
		
MysqlLianJie.sql();

	String sql1 = " select celebrityifo.celebritygood from celebrityifo where celebrityID = ?;";
	
	 PreparedStatement psm1 = MysqlLianJie.con.prepareStatement(sql1);
	 
	 psm1.setInt(1, id);
	 
	MysqlLianJie.re =  psm1.executeQuery();
	
		while(MysqlLianJie.re.next()) {
			
			nn = MysqlLianJie.re.getInt("celebritygood");
			
		}
		
		String sql = "update celebrityifo set celebritygood = ? where celebrityid = ?";
		
	PreparedStatement psm =	MysqlLianJie.con.prepareStatement(sql);
	
		psm.setInt(1,nn+1);
		
		psm.setInt(2, id);
		
		psm.executeUpdate();
	}

	@Override
	public String getUserImg(String username) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		String sql = "select userifo.img from userifo where username = ?";
	PreparedStatement pre = MysqlLianJie.con.prepareStatement(sql);
	pre.setString(1, username);
MysqlLianJie.re = pre.executeQuery();
	while(MysqlLianJie.re.next()) {
		img = MysqlLianJie.re.getString("img");
	}
		return img;
	}

	@Override
	public void addUserImg(User user) throws Exception {
		// TODO Auto-generated method stub
		MysqlLianJie.sql();
		String sql = "update userifo set img = '"+user.getImg()+"' where username = '"+user.getName()+"'";
		MysqlLianJie.sta.executeUpdate(sql);
	}

	@Override
	public JSONObject getUserzhi(String username) throws Exception {
		// TODO Auto-generated method stub
		JSONObject json = new JSONObject();
		MysqlLianJie.sql();
		String sql ="select * from knowledgeifo where username = '"+username+"'";
	MysqlLianJie.re = MysqlLianJie.sta.executeQuery(sql);
		while(MysqlLianJie.re.next()) {
			
			json.put("name", MysqlLianJie.re.getString("username"));
			json.put("jf", MysqlLianJie.re.getInt("knowledgeIntegral"));
			json.put("dw",MysqlLianJie.re.getString("knowledgeParagraphN"));
		}
		
		return json;
	}

	
	
	
	
}
