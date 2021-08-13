package com.hyun.megabox.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyun.megabox.dao.MemberDAO;
import com.hyun.megabox.dao.MemberService;
import com.hyun.megabox.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	
	@Override
	public void joinMember(MemberVO vo) {
		dao.joinMember(vo);
	}

	@Override
	public int idCk(MemberVO vo) {
		int result = dao.idCk(vo);
		return result;
	}

	@Override
	public MemberVO login(MemberVO vo, HttpSession session) {
		return dao.login(vo);
	}

	@Override
	public MemberVO viewMember(String memId) {
		return dao.viewMember(memId);
	}

	@Override
	public void modifyMember(MemberVO vo) {
		dao.modifyMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		dao.deleteMember(vo);
	}

	@Override
	public int pwdCk(MemberVO vo) {
		int result = dao.pwdCk(vo);
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
