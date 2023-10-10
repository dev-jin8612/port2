package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class sessionOkController  implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		 // 세션 값 가져오기
        HttpSession session = req.getSession();
//        loginOk에서 session.setAttr... 로 넣어 놓은걸 sessionValue에 저장해서 넘김
        String sessionValue = (String) session.getAttribute("memberid");
        
        // 클라이언트로 세션 값을 응답으로 보내기
        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();
        out.print(sessionValue);
        out.flush();
        
        return null;
	}
}
