package com.hyun.megabox.dao;

import javax.servlet.http.HttpSession;

import com.hyun.megabox.vo.MemberVO;

public interface MemberService {
	
	public void joinMember(MemberVO vo);
	public int idCk(MemberVO vo);
	public MemberVO login(MemberVO vo, HttpSession session);
	MemberVO viewMember(String memId);
	public void modifyMember(MemberVO vo);
	public void deleteMember(MemberVO vo);
	public int pwdCk(MemberVO vo);
	public void logout(HttpSession session);

}
