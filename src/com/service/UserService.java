package com.service;

import com.dao.UserDao;
import com.model.User;

public class UserService {
	
	UserDao udao = new UserDao();
	
	public User loginCheck(String userName, String password) {
		User u= udao.userConfirm(userName); //find out the user in the database first
		if(u==null){
			return u; //u=null
		} else {
			//if the user exist in the database, confirm password
			return udao.pwdConfirm(userName, password);
		}
	}
	
	public User signupCheck(String userName) {
		User u= udao.userConfirm(userName); //if no user, u==null
		if(u==null){
			return u; //u=null
		} else {
			return u; //u=rs
		}
		
	}
	
	public void addUser(User u) {
		udao.add(u);
	}
}
