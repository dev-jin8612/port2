package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpClient.Redirect;
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

public class FollowerListOkController implements Action {

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
		
		
//		내 팔로워 리스트
		List<MemberDTO> followers = followDAO.myFollowerList(longValue);
		JSONArray followerJSONs = new JSONArray();
	
		followers.stream().map(follower -> new JSONObject(follower)).forEach(json -> followerJSONs.put(json));

		out.print(followerJSONs.toString());		
		out.close();
		
		System.out.println(followerJSONs.toString());
		
		
		return null;
	}

}
