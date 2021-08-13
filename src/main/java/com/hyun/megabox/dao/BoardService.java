package com.hyun.megabox.dao;

import java.util.List;

import javax.servlet.http.HttpSession;
import com.hyun.megabox.vo.BoardVO;

public interface BoardService {
	
	List<BoardVO> list() throws Exception;
	void insertBoard(BoardVO vo);
	void updateBoard(BoardVO vo);
	void deleteBoard(int seq);
	public BoardVO view(int seq);
	public void viewnumber(int seq, HttpSession htSession);
	public List<BoardVO> paging(Criteria cri);

}
