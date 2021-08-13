package com.hyun.megabox.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyun.megabox.dao.BoardDAO;
import com.hyun.megabox.dao.Criteria;
import com.hyun.megabox.vo.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BoardVO> list() throws Exception {
		return sqlSession.selectList("bo.getBoardList");
	}

	@Override
	public void insertBoard(BoardVO vo) {
		sqlSession.insert("bo.insertBoard", vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		sqlSession.update("bo.updateBoard", vo);
	}

	@Override
	public void deleteBoard(int seq) {
		sqlSession.delete("bo.deleteBoard", seq);
	}

	@Override
	public BoardVO view(int seq) {
		return sqlSession.selectOne("bo.view", seq);
	}

	@Override
	public void viewnumber(int seq) {
		sqlSession.update("bo.viewnumber", seq);
	}

	@Override
	public List<BoardVO> paging(Criteria cri) {
		return sqlSession.selectList("bo.paging", cri);
	}

}
