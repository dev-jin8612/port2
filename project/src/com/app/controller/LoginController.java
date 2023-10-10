package com.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class LoginController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String memberId = null, memberPassword = null;
		Result result = new Result();
		boolean autoLogin = false;

		if (req.getHeader("Cookie") != null) {
			Cookie[] cookies = req.getCookies();

			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("memberId")) {
					memberId = cookie.getValue();
				}
				if (cookie.getName().equals("memberPassword")) {
					memberPassword = cookie.getValue();
				}
				if (cookie.getName().equals("autoLogin")) {
					autoLogin = Boolean.valueOf(cookie.getValue());
				}
			}
		}

//		쿠키에 사용자 아이디가 있다면
		if (memberId != null) {
//			로그인으로 쿠키에 있던 아이디와 비밀번호 전송
			req.setAttribute("memberIdentification", memberId);
			req.setAttribute("memberPassword", memberPassword);
			result.setPath("loginOk.member");
		} else {
//			로그아웃 후 로그인 페이지로 이동한다면,
//			자동 로그인 체크 여부를 판단하여 그대로 유지한다.
			if (autoLogin) {
				req.setAttribute("autoLogin", autoLogin);
			}
			result.setPath("templates/member/login.jsp");
		}

		return result;
	}
}
