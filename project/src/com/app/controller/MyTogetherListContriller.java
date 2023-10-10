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
import com.app.dao.TogetherDAO;
import com.app.vo.TogetherDTO;

public class MyTogetherListContriller implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println("컨트롤러 들어옴@@");
		
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		TogetherDTO togetherDTO = new TogetherDTO();
		TogetherDAO togetherDAO = new TogetherDAO();
		

//		세션 대신 사용
		int intValue = 2;
		Long longValue = Long.valueOf(intValue);
		
		
//		내 함께해요 리스트
		List<TogetherDTO> togethers = togetherDAO.myTogetherList(longValue);
		JSONArray togetherJSONs = new JSONArray();
		
		togethers.stream().map(together -> new JSONObject(together)).forEach(json -> togetherJSONs.put(json));
		System.out.println(togetherJSONs.toString());
		out.print(togetherJSONs.toString());
		out.close();
		
		return null;
	}

}
