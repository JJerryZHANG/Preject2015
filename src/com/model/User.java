package com.model;
//javaBean

public class User {
	private String name;
	private String pwd;
	private String sex;
	private String age;
	private String tag;
	
	public User() {
		
	}
	
	// be used to "LoginCheck"
	public User(String name, String pwd){
		this.name = name;
		this.pwd = pwd;
	}
	
	//be used to "sign up"
	public User(String userName, String password, String sex, String age,
			 String tag) {
		this.name = userName;
		this.pwd = password;
		this.sex = sex;
		this.age = age;
		this.tag = tag;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}
	
	
	
	
}
