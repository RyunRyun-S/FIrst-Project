package org.joonzis.mapper;

import java.util.List;

import org.joonzis.domain.BoardVO;
import org.joonzis.domain.Criteria;
import org.joonzis.persistence.DataSourceTests;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {

	@Autowired
	private BoardMapper mapper;
	
//	@Test
//	public void testGetList() {
//		//mapper.getList().forEach(board -> log.info(board));
//		
//		List<BoardVO> list = mapper.getList();
//		for (BoardVO boardVO : list) {
//			log.info(boardVO);
//		}
//	}
	
//	@Test
//	public void testInsert() {
//		BoardVO vo = new BoardVO();
//		vo.setTitle("새로 작성하는 글");
//		vo.setContent("새로 작성하는 내용");
//		vo.setWriter("newbie");
//		
//		mapper.insert(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testInsertSelectKey() {
//		BoardVO vo = new BoardVO();
//		vo.setTitle("새로 작성하는 글 select key");
//		vo.setContent("새로 작성하는 내용 select key");
//		vo.setWriter("newbie");
//		
//		mapper.insertSelectKey(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testRead() {
//		log.info(mapper.read(1L));
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT : " + mapper.delete(3L));
//	}
	
//	@Test
//	public void testUpdate() {
//		BoardVO vo = new BoardVO();
//		vo.setBno(5L);
//		vo.setTitle("수정된 제목");
//		vo.setContent("수정된 내용");
//		vo.setWriter("수정된 작성자");
//		
//		log.info("UPDATE COUNT : " + mapper.update(vo));
//	}
	
	
	@Test
	public void testPaging() {
		Criteria cri = new Criteria();
		List<BoardVO> list = mapper.getListWithPaging(cri);
		log.info(list);
	}
	
	
	
}
