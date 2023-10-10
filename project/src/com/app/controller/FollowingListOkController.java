package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.FollowDAO;
import com.app.vo.MemberDTO;

public class FollowingListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println("컨트롤러 들어옴@@11111");
		
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		MemberDTO memberDTO = new MemberDTO();
		FollowDAO followDAO = new FollowDAO();
		

//		세션 대신 사용
		int intValue = 2;
		Long longValue = Long.valueOf(intValue);
		
		
//		내 팔로잉 리스트
		List<MemberDTO> followings = followDAO.myFollowingList(longValue);
		JSONArray followingJSONs = new JSONArray();
	
		followings.stream().map(following -> new JSONObject(following)).forEach(json -> followingJSONs.put(json));

		out.print(followingJSONs.toString());		
		out.close();
		
		System.out.println(followingJSONs.toString());
		
		
		return null;
	}

}


