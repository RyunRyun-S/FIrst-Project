package org.joonzis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.joonzis.domain.BoardVO;
import org.joonzis.domain.Criteria;

public interface BoardMapper {
	
	// 전체 검색
	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	// 삽입
	public void insert(BoardVO board);
	
	// 원하는 값 리턴 받아서 적용
	public void insertSelectKey(BoardVO board);
	
	// 인덱스를 입력받아 데이터 출력
	public BoardVO read(Long bno);
	
	// 인덱스를 입력받아 데이터 삭제	
	public int delete(Long bno);
	
	// 데이터 수정
	public int update(BoardVO board);
	
	// 테이블 내 전체 데이터 개수 구하기
	public int getTotalCount(Criteria cri);
	
	// 댓글 수 업데이트
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	
}
