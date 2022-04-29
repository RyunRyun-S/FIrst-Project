package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.ProductVO;

public interface ProService {

	public List<ProductVO> productlist();
	public List<ProductVO> catelist1();
	public List<ProductVO> catelist2();
	public List<ProductVO> catelist3();
	public List<ProductVO> catelist4();
	public List<ProductVO> catelist5();
	public List<ProductVO> catelist6();
	public List<ProductVO> catelist7();
	public List<ProductVO> catelist8();
	public void insertProduct(ProductVO vo);
	public ProductVO getProduct(Long p_num);
	public boolean removeProduct(Long p_num);
	public boolean updateProduct(ProductVO vo);
	public List<ProductVO> getPlist(String p_id);
	public List<ProductVO> readKeword(String keyword);
	public List<ProductVO> realist();
	public List<ProductVO> piclist();
	public List<ProductVO> itlist();
}
