package com.dao;

import java.sql.SQLException;
import com.model.User;

public class UserDao extends DBconn {
	
	public User pwdConfirm (String userName, String password) {
		User user = null;
		try {
			String sql = "select * from user where name = " + "'"+userName +"'"+"and pwd = " + "'" + password + "'";
			rs = SqlQuery(sql);
			if(rs.next()){
				//the password is right
				user = new User();
				user.setName(rs.getString("name")); //save the user name.			
			}
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			closeAll();					
		}
		return user;
	}
	
	public User userConfirm(String userName){
		User user =  null;
		try {
			String sql = "select * from user where name = "+ "'" + userName + "'";
			rs = SqlQuery(sql);
			if(rs.next()){
				//the user exists
				user = new User();
				user.setName(rs.getString("name"));
			}
		} catch (SQLException e){
			e.printStackTrace();
		}finally{
			closeAll();					
		}
		return user;
	}
	
	public void add (User u) {
		try{
		String name = String.valueOf(u.getName());
		String pwd = String.valueOf(u.getPwd());
		String sex = String.valueOf(u.getSex());
		String age = String.valueOf(u.getAge());
		String tag = String.valueOf(u.getTag());
		String sql= "insert into user(name,pwd,sex,age,tag) value ('"+name+"','"+pwd+"','"+sex+"','"+age+"','"+tag+"')";
		SqlExecute(sql);
		}finally{
			closeAll();					
		}
	}
}
