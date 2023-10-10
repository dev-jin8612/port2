package com.app.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberDTO;

public class MemberDAO {
	public SqlSession sqlSession;

	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	아이디 찾기
	public boolean checkId(String memberid) {
		return (Integer)sqlSession.selectOne("member.checkId", memberid) == 0;
	}

//	회원가입
	public void insert(MemberDTO memberDTO) {
		sqlSession.insert("member.insert", memberDTO);
	}

//	로그인
	public MemberDTO login(String memberid, String memberpw) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberid", memberid);
		loginMap.put("memberpw", memberpw);

		return sqlSession.selectOne("member.login", loginMap);
	}
	
//	mypage 마이페이지 프로필 정보 출력 - 0720유아람 추가
	public MemberDTO myProfile(Long id) {
		return sqlSession.selectOne("member.profile", id);
	}
	
}