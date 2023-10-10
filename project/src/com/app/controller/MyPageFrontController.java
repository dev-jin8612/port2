package com.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class MyPageFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		System.out.println(req.getRequestURI());
		
		
		if(target.equals("myProfile")) {
			result = new MyProfileController().execute(req, resp);
		}else if(target.equals("myFeed")){
			result = new MyFeedListController().execute(req, resp);
		}else if(target.equals("myTrade")) {
			result = new MyTradeListContriller().execute(req, resp);
		}else if(target.equals("myTogether")) {
			result = new MyTogetherListContriller().execute(req, resp);
		}
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
//		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
