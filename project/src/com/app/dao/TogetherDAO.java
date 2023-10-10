package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.TogetherDTO;

public class TogetherDAO {
	public SqlSession sqlSession;

	public TogetherDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	함께해요 개수 출력
	public int myTogetherCount(Long member_id) {
		return sqlSession.selectOne("together.togetherMyCount", member_id);
	}
	
//	내 함께해요 리스트 출력
	public List<TogetherDTO> myTogetherList(Long id){
		return sqlSession.selectList("together.mytogetherList", id);
	}
}
