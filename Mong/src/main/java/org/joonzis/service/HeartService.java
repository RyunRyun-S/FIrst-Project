package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.HeartVO;

public interface HeartService {
	
	public List<HeartVO> getHeartList();
	public int insertHeart(HeartVO vo);
	public List<HeartVO> getHeart(String h_id);
	public int deleteHeart(Long h_num);
	public int updateHeart(HeartVO vo);


}
