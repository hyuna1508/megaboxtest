package com.hyun.megabox.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hyun.megabox.dao.MemberService;
import com.hyun.megabox.vo.MemberVO;



@Controller
@RequestMapping
public class MemberController {
	
	@Autowired
	MemberService service;
	
	//로그인 페이지
	@RequestMapping(value="/login")
	public String loginpg() {
		return "login";
	}
	
	//로그인 처리
	@RequestMapping(value="/loginCk") //로그인처리 컨트롤러
	public ModelAndView login(@ModelAttribute MemberVO vo, HttpSession session) {
		MemberVO result=service.login(vo, session);
		ModelAndView mav= new ModelAndView();
		if(result != null) {
			session.setAttribute("name", result.getName()); //이름
			session.setAttribute("id", result.getId()); //아이디
			session.setAttribute("pwd", result.getPassword()); //비밀번호
			mav.setViewName("main"); //로그인 성공하면 이동하는 페이지
			mav.addObject("msg", "success"); //성공
			System.out.println("로그인 vo: " + vo);
			System.out.println("mav: " + mav);
		}else {
			mav.setViewName("login"); //로그인실패시 로그인페이지 유지
			mav.addObject("msg", "fail"); //실패
		}
		return mav;
	}
	
	//회원가입 페이지
	@RequestMapping(value="/join")
	public String join() {
		return "join";
	}
	
	//회원가입
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String joinMember(MemberVO vo) {
		int result=service.idCk(vo);
		if(result==1) {
			return "login"; //가입완료시 돌아가는 jsp
		}else if(result==0) {
			service.joinMember(vo);
		}
		return "login";
	}
	
	//id중복체크
	@ResponseBody
	@RequestMapping(value="/idCk", method = RequestMethod.POST)
	public int idCk(MemberVO vo) {
		return service.idCk(vo);
	}
	
	//비밀번호 체크
	@ResponseBody
	@RequestMapping(value="/pwdCk", method = RequestMethod.POST)
	public int pwdCk(MemberVO vo) {
		int result=service.pwdCk(vo);
		return result;
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		//session.removeAttribute(HttpSessionutils.USER_SESSION_KEY);
		return "/login"; //로그인페이지로 이동
	} 

}
