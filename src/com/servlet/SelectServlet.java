package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.GiftService;
import com.util.Constant;

public class SelectServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	GiftService giftService = new GiftService(); 
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String tag = request.getParameter("tag");
		String[][] selectGifts = giftService.getSelectGifts(tag);
		
		for (int i = 0; i < 8; i++) {
			request.getSession().setAttribute("Name" + i, selectGifts[i][0]);
			request.getSession().setAttribute("Pic" + i, selectGifts[i][1]);
			request.getSession().setAttribute("Link" + i, selectGifts[i][2]);
			request.getSession().setAttribute("About" + i, selectGifts[i][3]);				
			request.getSession().setAttribute("Hot"+i, selectGifts[i][4]);
		}
		
		//re-acquire the hottest gift.
		String[] hottest = giftService.hottestGift();
		request.getSession().setAttribute("hName", hottest[0]);
		request.getSession().setAttribute("hPic", hottest[1]);
		request.getSession().setAttribute("hLink", hottest[2]);
		request.getSession().setAttribute("hAbout", hottest[3]);
		request.getSession().setAttribute("hHot", hottest[4]);
		
		request.getSession().setAttribute("currentTag", tag);
		request.setAttribute("info", "Get the Selected Gifts!");
		request.setAttribute("path", "Index.jsp"); 
		request.getRequestDispatcher(Constant.SUCCESS).forward(request, response);
		
	}

}
