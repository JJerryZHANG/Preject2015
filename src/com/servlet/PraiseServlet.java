package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.GiftService;
import com.util.Constant;

public class PraiseServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	GiftService giftService = new GiftService();
			
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String gName = request.getParameter("gName"); //the praised Gift
		HttpSession session = request.getSession();
		String uName = (String) session.getAttribute("userName");
		//confirm whether the user has praised the gift.
		boolean hasPraise = giftService.hasPraise(gName,uName);
		if(hasPraise==false){
			//add praise data
			giftService.praise(gName,uName);
			request.setAttribute("info", "Praise Successful!");
			request.setAttribute("path", "Index.jsp");
			
			System.out.println((String) session.getAttribute("currentTag"));
			String currentTag = (String) session.getAttribute("currentTag");
			if(currentTag == ""){
				request.setAttribute("path", "servlet/GiftServlet"); //redirect to the main Page.
			} else {
				request.setAttribute("path", "servlet/SelectServlet?tag="+ currentTag);
			}
			request.getRequestDispatcher(Constant.SUCCESS).forward(request, response);
		}else{
			request.setAttribute("info", "Has Praised Before!");
			request.getRequestDispatcher(Constant.FAILURE).forward(request, response);
		}
	}
}
