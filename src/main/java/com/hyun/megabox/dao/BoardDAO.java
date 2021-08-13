package com.hyun.megabox.dao;

import java.util.List;

import com.hyun.megabox.vo.BoardVO;

public interface BoardDAO {	
	
	List<BoardVO> list() throws Exception;
	void insertBoard(BoardVO vo);
	void updateBoard(BoardVO vo);
	void deleteBoard(int seq);
	public BoardVO view(int seq);
	public void viewnumber(int seq);
	public List<BoardVO> paging(Criteria cri);
	
}
