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
import com.app.dao.FeedDAO;
import com.app.vo.FeedDTO;

public class MyFeedListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println("컨트롤러 들어옴");
		
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		FeedDTO feedDTO = new FeedDTO();
		FeedDAO feedDAO = new FeedDAO();

		
//		세션 대신 사용
		int intValue = 2;
		Long longValue = Long.valueOf(intValue);

		
//		내 피드 리스트
		List<FeedDTO> feeds = feedDAO.myFeedList(longValue);
		JSONArray feedJSONs = new JSONArray();
		
		feeds.stream().map(feed -> new JSONObject(feed)).forEach(json -> feedJSONs.put(json));
		System.out.println(feedJSONs.toString());
		out.print(feedJSONs.toString());
		out.close();
		
		return null;
	}

}
