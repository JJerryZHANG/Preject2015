package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.GiftService;
import com.util.Constant;

public class GiftServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	GiftService giftService = new GiftService(); 
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String[][] gifts = giftService.getGifts();
		for (int i = 0; i < 8; i++) {
			request.getSession().setAttribute("Name" + i, gifts[i][0]);
			request.getSession().setAttribute("Pic" + i, gifts[i][1]);
			request.getSession().setAttribute("Link" + i, gifts[i][2]);
			request.getSession().setAttribute("About" + i, gifts[i][3]);				
			request.getSession().setAttribute("Hot"+i, gifts[i][4]);
		}
		//System.out.println(gifts[0][2]);
		String[] hottest = giftService.hottestGift();
		request.getSession().setAttribute("hName", hottest[0]);
		request.getSession().setAttribute("hPic", hottest[1]);
		request.getSession().setAttribute("hLink", hottest[2]);
		request.getSession().setAttribute("hAbout", hottest[3]);
		request.getSession().setAttribute("hHot", hottest[4]);
		
		request.getSession().setAttribute("currentTag", "");
		request.setAttribute("info", "Get Gifts Successful");
		request.setAttribute("path", "Index.jsp");
		request.getRequestDispatcher(Constant.SUCCESS).forward(request, response);
		
		
	}		
}
