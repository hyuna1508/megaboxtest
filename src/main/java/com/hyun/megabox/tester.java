package com.hyun.megabox;

import java.util.List;

import org.junit.Test;import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.hyun.megabox.dao.BoardDAO;
import com.hyun.megabox.dao.Criteria;
import com.hyun.megabox.vo.BoardVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class tester {
	
	@Autowired
	BoardDAO dao;

	@Test
	public void testListPaging() {
		Criteria cri = new Criteria();
		cri.setPageNum(3);
		cri.setAmount(10);
		
		List<BoardVO> list = dao.paging(cri);
		list.forEach(board -> log.info(board));
	}
	

}
