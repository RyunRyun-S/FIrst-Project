package org.joonzis.mapper;

import java.util.List;

import org.joonzis.domain.ProductVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProMapperTests {

	@Autowired
	private ProMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		List<ProductVO> list = mapper.productlist();
//		for (ProductVO proVO : list) {
//			log.info(proVO);
//		}
//	}
	
//	@Test
//	public void testInsert() {
//		ProductVO vo = new ProductVO();
//		vo.setP_id("mem테스트 아이디");
//		vo.setP_cate(3L);
//		vo.setP_content("c테스트 내용");
//		vo.setP_imgf("첫번째 이미지");
//		vo.setP_imgL("마지막 이미지");
//		vo.setP_name("테스트 제목");
//		vo.setP_price(34000L);
//		
//		mapper.insertProduct(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testInsertSelectKey() {
//		ProductVO vo = new ProductVO();
//		vo.setP_id("mem테스트 아이디");
//		vo.setP_cate(3L);
//		vo.setP_content("c테스트 내용");
//		vo.setP_imgf("첫번째 이미지");
//		vo.setP_imgL("마지막 이미지");
//		vo.setP_name("테스트 제목");
//		vo.setP_price(39000L);
//		
//		mapper.insertProduct(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testRead() {
//		log.info(mapper.getProduct(2L));
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT : " + mapper.removeProduct(1L));
//	}
	
	@Test
	public void testUpdate() {
		ProductVO vo = new ProductVO();
		vo.setP_id("mem테스트 아이디");
		vo.setP_cate(3L);
		vo.setP_content("c테스트 내용");
		vo.setP_imgf("첫번째 이미지");
		vo.setP_imgl("마지막 이미지");
		vo.setP_title("테스트 제목");
		vo.setP_price(39000L);
		
		log.info("UPDATE COUNT : " + mapper.updateProduct(vo));
	}
	
	

	
	
	
}
