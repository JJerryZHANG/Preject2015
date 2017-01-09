package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;
import com.service.UserService;
import com.util.Constant;

//cancel extending from HttpServlet
public class UserServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService(); 

	/* 
	//Override 
	public void doBussiness(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {		
		
		System.out.println("hello World");
		String flag= request.getParameter("flag");
		if("login".equals(flag)){
			System.out.print("get");
			login(request,response);
		}else{
			login(request,response);
			System.out.print("get");
		}
	}
	*/

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//System.out.println("hello World");
		String flag= request.getParameter("flag");
		if("login".equals(flag)){
			System.out.print("login");
			login(request,response);
		}else{
			System.out.print("signup");
			signup(request,response);
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		// checking whether the user exist in the database first
		User user = userService.loginCheck(userName, password);
		if(user!=null){
			session.setAttribute("userName", userName);
			request.setAttribute("info", "Login Successful");
			//request.setAttribute("path", "Index.jsp");
			request.setAttribute("path", "/servlet/GiftServlet");
			request.getRequestDispatcher(Constant.SUCCESS).forward(request, response);
			//forward(Constant.SUCCESS,request,response);
			// After saving the user name to the session, forward to the main page
		}else{
			request.setAttribute("info", "Login Failed");
			//request.setAttribute("path", "Login.jsp");
			request.getRequestDispatcher(Constant.FAILURE).forward(request, response);
			//forward(Constant.FAILURE,request,response);
			//if don't have the user, login failure and warning
		}
		
	}
	
	private void signup(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String tag = request.getParameter("tag");
		User user = userService.signupCheck(userName);
		if (user != null) {
			// the user name has existed in the database
			request.setAttribute("info", "The User Name has Existed!");
			request.setAttribute("path", "Signup.jsp");
			request.getRequestDispatcher(Constant.FAILURE).forward(request, response);
		} else {
			// user == null, no such a user in the database.
			/*
			user.setName(userName);
			user.setPwd(password);
			user.setSex(sex);
			user.setAge(age);
			user.setTag(tag);
			*/
			user = new User(userName,password,sex,age,tag);
			userService.addUser(user);
			request.setAttribute("info", "Sign Up Successful");
			request.setAttribute("path", "Login.jsp");
			request.getRequestDispatcher(Constant.SUCCESS).forward(request, response);
		}
		
	}
}
