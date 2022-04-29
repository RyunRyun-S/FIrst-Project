package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.ProductVO;
import org.joonzis.mapper.ProMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ProServiceImpl implements ProService{

	@Setter(onMethod_ = @Autowired)
	private ProMapper mapper;
	
	@Override
	public List<ProductVO> productlist() {
		log.info("getting product list... ");
		return mapper.productlist();
	}

	@Override
	public void insertProduct(ProductVO vo) {
		log.info("insert product... : "+vo );
		mapper.insertProduct(vo);
		
	}

	@Override
	public ProductVO getProduct(Long p_num) {
		log.info("get product... num : "+p_num);
		return mapper.getProduct(p_num);
	}

	@Override
	public boolean removeProduct(Long p_num) {
		log.info("remove Product list... num : "+p_num);
		return mapper.removeProduct(p_num)==1;
	}

	@Override
	public boolean updateProduct(ProductVO vo) {
		log.info("update product list... : "+vo);
		return mapper.updateProduct(vo)==1;
	}

	@Override
	public List<ProductVO> catelist1() {
		log.info("catelist1... ");
		return mapper.catelist1();
	}

	@Override
	public List<ProductVO> catelist2() {
		log.info("catelist2... ");
		return mapper.catelist2();
	}

	@Override
	public List<ProductVO> catelist3() {
		log.info("catelist3... ");
		return mapper.catelist3();
	}

	@Override
	public List<ProductVO> catelist4() {
		log.info("catelist4... ");
		return mapper.catelist4();
	}

	@Override
	public List<ProductVO> catelist5() {
		log.info("catelist5... ");
		return mapper.catelist5();
	}

	@Override
	public List<ProductVO> catelist6() {
		log.info("catelist6... ");
		return mapper.catelist6();
	}

	@Override
	public List<ProductVO> catelist7() {
		log.info("catelist7... ");
		return mapper.catelist7();
	}

	@Override
	public List<ProductVO> catelist8() {
		log.info("catelist8... ");
		return mapper.catelist8();
	}

	@Override
	public List<ProductVO> readKeword(String keyword) {
		log.info("readKeword");
		return mapper.readKeword(keyword);
	}

	@Override
	public List<ProductVO> realist() {
		log.info("realist");
		return mapper.realist();
	}

	@Override
	public List<ProductVO> piclist() {
		log.info("piclist");
		return mapper.piclist();
	}

	@Override
	public List<ProductVO> itlist() {
		log.info("piclist");
		return mapper.itlist();
	}

	@Override
	public List<ProductVO> getPlist(String p_id) {
		log.info("plist");
		return mapper.getPlist(p_id);
	}

}
