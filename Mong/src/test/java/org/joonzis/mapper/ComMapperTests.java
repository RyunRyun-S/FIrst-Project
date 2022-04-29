package org.joonzis.mapper;

import java.util.List;

import org.joonzis.domain.CompleteVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ComMapperTests {

	@Autowired
	private ComMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		List<CompleteVO> list = mapper.comList();
//		for (CompleteVO completeVO : list) {
//			log.info(completeVO);
//		}
//	}
	
//	@Test
//	public void testInsert() {
//		CompleteVO vo = new CompleteVO();
//		vo.setC_title("새로 작성하는 글");
//		vo.setC_price(20000L);
//		vo.setC_check(1L);
//		
//		mapper.insertCom(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testInsertSelectKey() {
//		CompleteVO vo = new CompleteVO();
//		vo.setC_title("새로 작성하는 글 select key");
//		vo.setC_price(23000L);
//		vo.setC_check(2L);
//		
//		mapper.insertCom(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testRead() {
//		log.info(mapper.getCom(1L));
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT : " + mapper.removeCom(3L));
//	}
	
	@Test
	public void testUpdate() {
		CompleteVO vo = new CompleteVO();
		vo.setC_num(5L);
		vo.setC_title("수정된 제목");
		vo.setC_price(30000L);
		
		log.info("UPDATE COUNT : " + mapper.updateCom(vo));
	}
	
	

	
	
	
}
