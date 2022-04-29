package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.BoardVO;
import org.joonzis.domain.Criteria;

public interface BoardService {
//	public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	public void register(BoardVO board);
	public BoardVO get(Long bno);
	public boolean remove(Long bno);
	public boolean modify(BoardVO board);
	public int getTotal(Criteria cri);
	
}
