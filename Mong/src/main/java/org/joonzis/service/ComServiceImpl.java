package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.CompleteVO;
import org.joonzis.mapper.ComMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ComServiceImpl implements ComService{

	@Setter(onMethod_ = @Autowired)	
	private ComMapper mapper;
	
	@Override
	public List<CompleteVO> comList() {
		log.info("getting complete list... ");
		return mapper.comList();
	}

	@Override
	public void insertCom(CompleteVO vo) {
		log.info("insert complete... : "+vo );
		mapper.insertCom(vo);
	}

	@Override
	public CompleteVO getCom(Long c_num) {
		log.info("get complete... num : "+c_num);
		return mapper.getCom(c_num);
	}
	@Override
	public List<CompleteVO> getname(String c_id) {
		log.info("get complete... num : "+c_id);
		return mapper.getname(c_id);
	}
	@Override
	public List<CompleteVO> getPname(String cd_id) {
		log.info("get complete... cd id: "+cd_id);
		return mapper.getPname(cd_id);
	}

	@Override
	public boolean removeCom(Long c_num) {
		log.info("remove complete list... num : "+c_num);
		return mapper.removeCom(c_num)==1;
	}

	@Override
	public boolean updateCom(CompleteVO vo) {
		log.info("update complete list... : "+vo);
		return mapper.updateCom(vo)==1;
	}

	@Override
	public void finalinsert(CompleteVO vo) {
		log.info("insert final... : "+vo );
		mapper.finalinsert(vo);
		
	}

}
