package com.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class FollowFrontContriller extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		System.out.println(target);
		if(target.equals("followerList")) {
			result = new Result();
			result.setPath("/mypage/following.jsp");
		}else if(target.equals("followingList")) {
			result = new Result();
			result.setPath("/mypage/following.jsp");
		}
		else if (target.equals("follower")) {
			result = new FollowerListOkController().execute(req, resp);
		}else if(target.equals("following")) {
			result = new FollowingListOkController().execute(req, resp);
		}
		
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

}
