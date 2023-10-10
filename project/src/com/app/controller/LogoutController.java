package com.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class LogoutController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
//		세션에 있는 정보 모두 삭제
		req.getSession().invalidate();
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.member");
		return result;
	}

}
