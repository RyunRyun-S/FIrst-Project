package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.BoardVO;
import org.joonzis.domain.Criteria;
import org.joonzis.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;
	


//	@Override
//	public List<BoardVO> getList() {
//		log.info("getList.....");
//		return mapper.getList();
//	}
	
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Transactional
	@Override
	public void register(BoardVO board) {
		// 게시글 등록
		log.info("register...." + board);
		mapper.insertSelectKey(board);
		
		log.info("@@@@@@@@@@@@@@@@");
		
	}

	@Override
	public BoardVO get(Long bno) {
		log.info("get...." + bno);
		return mapper.read(bno);
	}

	@Override
	public boolean remove(Long bno) {
		log.info("remove...." + bno);
		return mapper.delete(bno)==1;
	}

	@Transactional
	@Override
	public boolean modify(BoardVO board) {
		log.info("modify...." + board);
		
		// 게시글을 수정한다.
		boolean modifyResult = mapper.update(board)==1;
		return modifyResult;
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get Total Count...");
		return mapper.getTotalCount(cri);
	}

	
	
	
	
	
}
