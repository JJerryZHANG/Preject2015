package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	//Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		doBusiness(request, response);	
	}

	//Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//System.out.println("hello");
		doBusiness(request, response);
	}

	public void doBusiness(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("World");
	}
	
	public void forward(String url,HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		request.getRequestDispatcher(url).forward(request, response);
	}
	
}
