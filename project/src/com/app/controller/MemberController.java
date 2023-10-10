package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;

public class MemberController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		System.out.println(req.getParameter("memberid"));
		PrintWriter out = resp.getWriter();
		out.print(memberDAO.checkId(req.getParameter("memberid")));
		out.close();
		
		return null;
	}
}
