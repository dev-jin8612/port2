package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.FeedDAO;
import com.app.dao.FollowDAO;
import com.app.dao.MemberDAO;
import com.app.dao.TogetherDAO;
import com.app.dao.TradeDAO;
import com.app.vo.FeedDTO;
import com.app.vo.MemberDTO;

public class MyProfileController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println("컨트롤러 들어옴11");
		
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		FeedDTO feedDTO = new FeedDTO();
		FeedDAO feedDAO = new FeedDAO();
		FollowDAO followDAO = new FollowDAO();
		TogetherDAO togetherDAO = new TogetherDAO();
		TradeDAO tradeDAO = new TradeDAO();
		
		
//		세션 대신 사용
		int intValue = 2;
		Long longValue = Long.valueOf(intValue);
		memberDTO = memberDAO.myProfile(longValue);

		
//		JSON 오브젝트에 담기
		JSONObject member = new JSONObject();
		
		try {
			member.put("id", memberDTO.getId());
			member.put("memberid", memberDTO.getMemberid());
			member.put("memberpw", memberDTO.getMemberpw());
			member.put("membername", memberDTO.getMembername());
			member.put("membernick", memberDTO.getMembernick());
			member.put("memberimg", memberDTO.getMemberimg());
			member.put("memberhp", memberDTO.getMemberhp());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		req.setAttribute("mypage", member.toString());
		req.setAttribute("feedCount", feedDAO.myFeedCount(longValue));
		req.setAttribute("followerCount", followDAO.myFollowerCount(longValue));
		req.setAttribute("followingCount", followDAO.myFollowingCount(longValue));
		req.setAttribute("togetherCount", togetherDAO.myTogetherCount(longValue));
		req.setAttribute("tradeCount", tradeDAO.myTradeCount(longValue));
			
		result.setPath("mypage/mypage2.jsp");

		return result;
	}

}
