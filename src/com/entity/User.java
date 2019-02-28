package com.entity;

/**
 * @author jiege
 *
 */
public class User {

	private String name;
	
	private String password;
	
	private String email;
	
	private int age;
	
	private String sex;
	
	private String gxqm;
	
	private String city;
	
	private String phone;
	
	private int celebrityID;
	
	private String img;

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getGxqm() {
		return gxqm;
	}

	public void setGxqm(String gxqm) {
		this.gxqm = gxqm;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getCelebrityID() {
		return celebrityID;
	}

	public void setCelebrityID(int celebrityID) {
		this.celebrityID = celebrityID;
	}

	public User(String name, String password, String email,int age, String sex, String gxqm,
			String city, String phone, int celebrityID,String img) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.age = age;
		this.sex = sex;
		this.gxqm = gxqm;
		this.city = city;
		this.phone = phone;
		this.celebrityID = celebrityID;
		this.img = img;
	}

	public User(String name, String password, String phone) {
		super();
		this.name = name;
		this.password = password;
		this.phone = phone;
	}

	public User(String username,String password, String email, int age, String sex, String gxqm, String city) {
		super();
		this.password = password;
		this.email = email;
		this.age = age;
		this.sex = sex;
		this.gxqm = gxqm;
		this.city = city;
		this.name = username;
	}

	public User(String username,String img) {
		super();
		this.img = img;
		this.name = username;
	}
	
	
	
	
	
}
