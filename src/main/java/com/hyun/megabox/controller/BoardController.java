package com.hyun.megabox.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyun.megabox.dao.BoardService;
import com.hyun.megabox.dao.Criteria;
import com.hyun.megabox.dao.PagingDAO;
import com.hyun.megabox.vo.BoardVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping
public class BoardController {
	

	@Autowired
	BoardService service;
	
	//메인
	@RequestMapping(value="/")
	public String main() {
		return "main";
	}
	
	//게시판 목록
	@RequestMapping(value="/list")
	public void list(Criteria cri, Model model) throws Exception{
		log.info("list: "+cri);
		model.addAttribute("list", service.paging(cri)); //게시판 목록
		model.addAttribute("pageMaker", new PagingDAO(cri, 2000)); //페이징
	}
	
//	//게시판목록-1
//	@RequestMapping(value="/list")
//	public ModelAndView list() throws Exception{
//		List<BoardVO> list= service.list();
//		ModelAndView mav= new ModelAndView();
//		mav.setViewName("list"); //view= list.jsp
//		mav.addObject("list", list);
//		return mav;
//	}
	
	//글쓰기
	@RequestMapping(value="/insertBoard")
	public String insertBoard(BoardVO vo) {
		service.insertBoard(vo);
		return "redirect:list"; //글 등록하면 리스트로 이동
	}
	
	//글쓰기 화면
	@RequestMapping(value="/writer")
	public String insertBoard() {
		return "insertBoard";
	}
	
	//글 수정하기 페이지
	@RequestMapping(value="/updatepg")
	public String updateBoardpg(@ModelAttribute("boardVO") BoardVO vo, Model model) {
		return "update";
	}
	
	//수정
	@RequestMapping(value="/update")
	public String updateBoard(@ModelAttribute("boardVO") BoardVO vo, Model model) {
		service.updateBoard(vo);
		return "redirect:list";
	}
	
	//글 삭제하기
	@RequestMapping("delete")
	public String deleteBoard(BoardVO vo) {
		service.deleteBoard(vo.getSeq());
		return "redirect:list";
	}
	
	//글 읽기(상세보기)
	@RequestMapping(value="view", method= RequestMethod.GET)
	public ModelAndView view(@RequestParam int seq, HttpSession htSession) {
		System.out.println("===============================");
		//조회수 증가
		service.viewnumber(seq, htSession);
		ModelAndView mav= new ModelAndView();
		mav.setViewName("view");
		mav.addObject("dao", service.view(seq));
		System.out.println("seq: " + seq);
		System.out.println("HttpSession: " + htSession);
		System.out.println("mav: " + mav);
		return mav;
	}
	
//	//페이징
//	@RequestMapping(value="paging")
//	public void paging(Criteria cri, Model model) {
//		System.out.println("list: " + cri);
//		model.addAttribute("list", service.paging(cri));
//		model.addAttribute("pageMaker", new PagingDAO(cri, 123));
//	}
	
//	@RequestMapping(value="view", method= RequestMethod.POST)
//	public String viewpage() {
//		return "view";
//	}


	
}
