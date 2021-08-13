package com.hyun.megabox.impl;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyun.megabox.dao.MemberDAO;
import com.hyun.megabox.vo.MemberVO;

@Repository("MemberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void joinMember(MemberVO vo) {
		sqlSession.insert("mem.insertMember", vo);
	}

	@Override
	public int idCk(MemberVO vo) {
		int result = sqlSession.selectOne("mem.idCk", vo);
		return result;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		MemberVO member = sqlSession.selectOne("mem.login", vo);
		return member;
	}

	@Override
	public MemberVO viewMember(String memId) {
		MemberVO member = sqlSession.selectOne("mem.viewMember", memId);
		return member;
	}

	@Override
	public void modifyMember(MemberVO vo) {
		sqlSession.update("mem.modiftMember", vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		sqlSession.delete("mem.deleteMember", vo);
	}

	@Override
	public int pwdCk(MemberVO vo) {
		int result = sqlSession.selectOne("mem.pwdCk", vo);
		return result;
	}

	@Override
	public void logout(HttpSession session) {

	}

}
