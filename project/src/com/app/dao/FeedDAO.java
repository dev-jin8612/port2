package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.FeedDTO;

public class FeedDAO {
	public SqlSession sqlSession;

	public FeedDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	피드 개수 출력
	public int myFeedCount(Long member_id) {
		return sqlSession.selectOne("feed.feedMyCount", member_id);
	}
	
//	내 피트 리스트 출력
	public List<FeedDTO> myFeedList(Long id){
		return sqlSession.selectList("feed.myFeedList", id);
	}
}
