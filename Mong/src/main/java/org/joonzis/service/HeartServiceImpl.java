package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.HeartVO;
import org.joonzis.mapper.HeartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class HeartServiceImpl implements HeartService{

	@Setter(onMethod_ = @Autowired)
	HeartMapper mapper;
	
	@Override
	public List<HeartVO> getHeartList() {
		log.info("getHeartList");
		return mapper.getHeartList();
	}

	@Override
	public int insertHeart(HeartVO vo) {
		log.info("insertHeart");	
		return mapper.insertHeart(vo);
	}

	@Override
	public List<HeartVO> getHeart(String h_id) {
		log.info("getHeart");
		return mapper.getHeart(h_id);
	}

	@Override
	public int deleteHeart(Long h_num) {
		log.info("deleteHeart");
		return mapper.deleteHeart(h_num);
	}

	@Override
	public int updateHeart(HeartVO vo) {
		log.info("updateHeart");
		return mapper.updateHeart(vo);
	}

}
