package com.app.controller;

import java.io.Console;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberDTO;

public class LoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		String memberid = req.getParameter("memberid");
		String memberpw = req.getParameter("memberpw");
		MemberDTO Id = null;
		HttpSession session = req.getSession();
		Result result = new Result();
		result.setRedirect(true);

		System.out.println(memberpw);
		
		Id = memberDAO.login(memberid, memberpw);
		
//		회원이 없다면
		if (Id == null) {
			result.setPath(req.getContextPath() + "login.member?login=false");
		} else {
//			로그인 성공/세션에 로그인된 회원의 번호 저장
			session.setAttribute("memberid", memberid);
			result.setPath(req.getContextPath() + "feed.member");
		}
		return result;
	}
}