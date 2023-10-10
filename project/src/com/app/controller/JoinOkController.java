package com.app.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class JoinOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		Result result = new Result();
		Path path = null;
		
		HttpSession session = req.getSession();
		String root = req.getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1200*675* 20;

		MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		memberDTO.setMemberid(multipartRequest.getParameter("memberid"));
		memberDTO.setMemberpw(multipartRequest.getParameter("memberpw2"));
		memberDTO.setMembername(multipartRequest.getParameter("membername"));
		memberDTO.setMembernick(multipartRequest.getParameter("membernick"));
		memberDTO.setMemberhp(multipartRequest.getParameter("memberhp"));
		
		System.out.println(multipartRequest.getParameter("memberid"));
		
		Enumeration<String> inputTypeFileNames = multipartRequest.getFileNames();
		
		while(inputTypeFileNames.hasMoreElements()) {
			String inputTypeFileName = inputTypeFileNames.nextElement();
			String fileSystemName = multipartRequest.getFilesystemName(inputTypeFileName);
			if(fileSystemName == null) {continue;}
//			memberDTO.setMemberimg(multipartRequest.getParameter("memberimg"));
			memberDTO.setMemberimg(root + fileSystemName);
		}
		memberDAO.insert(memberDTO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.member");
		
		return result;
	}
}
