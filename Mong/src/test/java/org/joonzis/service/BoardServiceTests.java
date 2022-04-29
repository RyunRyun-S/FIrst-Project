package org.joonzis.service;

import org.joonzis.domain.BoardVO;
import org.joonzis.domain.Criteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardServiceTests {

	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
//	@Test
//	public void testExist() {
//		log.info(service);
//	}
	
//	@Test
//	public void testGetList() {
//		log.info(service.getList());
//	}
	
	@Test
	public void testGetList() {
		log.info(service.getList(new Criteria(2, 10)));
	}

	
//	@Test
//	public void testRegister() {
//		BoardVO vo = new BoardVO();
//		vo.setTitle("새로 작성하는 글 테스트");
//		vo.setContent("새로 작성하는 내용 테스트");
//		vo.setWriter("newbie test");
//		
//		service.register(vo);
//		
//		log.info("생성된 게시물의 번호 : " + vo.getBno());
//	}
//	
//	@Test
//	public void testGet() {
//		log.info(service.get(8l));
//	}
//	
//	@Test
//	public void testRemove() {
//		log.info("REMOVE RESULT : " + service.remove(4L));
//	}
//	
//	@Test
//	public void testModify() {
//		BoardVO vo = service.get(1L);
//		
//		if(vo == null) {
//			return;
//		}
//		
//		
//		vo.setTitle("제목을 수정 테스트합니다.");
//		log.info("MODIFY RESULT : " + service.modify(vo));
//	}
	
	
	
	
}
