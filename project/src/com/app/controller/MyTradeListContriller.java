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
import com.app.dao.TradeDAO;
import com.app.vo.TogetherDTO;
import com.app.vo.TradeDTO;

public class MyTradeListContriller implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println("컨트롤러 들어옴@@");
		
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		TradeDTO tradeDTO = new TradeDTO();
		TradeDAO tradeDAO = new TradeDAO();
		

//		세션 대신 사용
		int intValue = 2;
		Long longValue = Long.valueOf(intValue);
		
		
//		내 함께해요 리스트
		List<TradeDTO> trades = tradeDAO.myTradeList(longValue);
		JSONArray tradeJSONs = new JSONArray();
		
		trades.stream().map(trade -> new JSONObject(trade)).forEach(json -> tradeJSONs.put(json));
		System.out.println(tradeJSONs.toString());
		out.print(tradeJSONs.toString());
		out.close();
		
		return null;
	}

}
