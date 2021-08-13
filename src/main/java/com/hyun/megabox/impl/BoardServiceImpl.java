package com.hyun.megabox.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyun.megabox.dao.BoardDAO;
import com.hyun.megabox.dao.BoardService;
import com.hyun.megabox.dao.Criteria;
import com.hyun.megabox.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO dao;

	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public void insertBoard(BoardVO vo) {
		dao.insertBoard(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		dao.updateBoard(vo);
	}

	@Override
	public void deleteBoard(int seq) {
		dao.deleteBoard(seq);
	}

	@Override
	public BoardVO view(int seq) {
		return dao.view(seq);
	}

	@Override
	public void viewnumber(int seq, HttpSession htSession) {
		long update_time=0;
		if(htSession.getAttribute("update_time"+seq)!=null) {
			update_time = (long)htSession.getAttribute("update_time"+seq);
		}
		long current_time=System.currentTimeMillis();
		if(current_time - update_time > 5*1000) {
			dao.viewnumber(seq);
			htSession.setAttribute("update_time"+seq, current_time);
		}
	}

	@Override
	public List<BoardVO> paging(Criteria cri) {
		return dao.paging(cri);
	}


}
