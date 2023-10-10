package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.TradeDAO;
import com.app.vo.TradeDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class TradeController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		TradeDAO tradeDAO = new TradeDAO();
		System.out.println("내부!");
		PrintWriter out = resp.getWriter();
		
		Result result = new Result();
		
		TradeDTO tradeDTO = new TradeDTO();
		
		Path path = null;
		
		System.out.println("bb");
		
		System.out.println(req.getParameter("infor"));
		
		if(req.getParameter("infor").equals("list")) {
			List<TradeDTO> trade_list = tradeDAO.list();
			JSONArray jsonArray = new JSONArray();
			for (Object list : trade_list) {
				JSONObject json = new JSONObject(list);
				jsonArray.put(json);
			}
			out.print(jsonArray.toString());
		}
		else if (req.getParameter("infor").equals("insert")) {
			HttpSession session = req.getSession();
			String root = req.getServletContext().getRealPath("/") + "upload/";
			int fileSize = 1200*675* 20;
			MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			Enumeration<String> inputTypeFileNames = multipartRequest.getFileNames();
			tradeDTO.setBoardtitle(multipartRequest.getParameter("title"));
			tradeDTO.setBoardcontents(multipartRequest.getParameter("content"));
			tradeDTO.setMemberid(Long.parseLong(multipartRequest.getParameter("memberid")));
			tradeDTO.setBoardstatus(multipartRequest.getParameter("status"));
			tradeDTO.setImgnum(Integer.parseInt(multipartRequest.getParameter("imgnum")));
			
//			게시물 등록
			tradeDAO.insert(tradeDTO);
			
			while(inputTypeFileNames.hasMoreElements()) {
				String inputTypeFileName = inputTypeFileNames.nextElement();
				
				String fileSystemName = multipartRequest.getFilesystemName(inputTypeFileName);
				if(fileSystemName == null) {continue;}
				
				tradeDTO.setFilesystemname(fileSystemName);
//				최근 작성된 게시물 조회
				tradeDTO.setTradeimg(tradeDAO.selecttrade());
				
//				이미지 등록
				tradeDAO.img(tradeDTO);
			}
//			tradeDTO.setBoardtitle(req.getParameter("title"));
//			tradeDTO.setMemberid(Long.parseLong(req.getParameter("memberid")));
//			tradeDTO.setBoardstatus(req.getParameter("status"));
//			
//			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "com.trade");
			return result;
		}
		else if(req.getParameter("infor").equals("detail")) {
			Long boardId = Long.valueOf(req.getParameter("id"));
			JSONArray jsonArray = new JSONArray();
			
			tradeDAO.detail(boardId).stream().map(JSONObject::new).forEach(jsonArray::put);
			System.out.println(jsonArray.toString());
			out.print(jsonArray.toString());
			
		}
		else if(req.getParameter("infor").equals("trade")) {
			HttpSession session = req.getSession();
			String root = req.getServletContext().getRealPath("/") + "upload/";
			int fileSize = 1200*675* 20;
			MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			Enumeration<String> inputTypeFileNames = multipartRequest.getFileNames();
			tradeDTO.setTogetherappcontent(multipartRequest.getParameter("content"));
			tradeDTO.setTradeid(Long.parseLong(multipartRequest.getParameter("id")));
			tradeDTO.setMemberid(Long.parseLong(multipartRequest.getParameter("memberid")));
			
			while(inputTypeFileNames.hasMoreElements()) {
				String inputTypeFileName = inputTypeFileNames.nextElement();
				String fileSystemName = multipartRequest.getFilesystemName(inputTypeFileName);
				if(fileSystemName == null) {continue;}
				tradeDTO.setFilesystemname(fileSystemName);
			}
			
			tradeDAO.trade(tradeDTO);
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "com.trade");
			return result;
		}
		else {
			System.out.println("아무것도 없다");
		}
		
		out.close();
		
		return null;
	}
}
