package com.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class TradeFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String target = req.getRequestURI().substring(req.getRequestURI().lastIndexOf("/") + 1).split("\\.")[0];
		Result result = null;

		System.out.println(target + "_F");

		if (target.equals("list")) {
			result = new TradeController().execute(req, resp);
		} else if (target.equals("insert")) {
			result = new TradeController().execute(req, resp);
		} else if (target.equals("com")) {
			result = new Result();
			result.setPath("trade/jsp/list.jsp");
		} else if (target.equals("detail")) {
			result = new TradeController().execute(req, resp);
		} else if (target.equals("trade")) { 
			result = new TradeController().execute(req, resp); 
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
		doGet(req, resp);
	}
}
