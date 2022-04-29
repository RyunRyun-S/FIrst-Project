package org.joonzis.mapper;

import java.util.List;

import org.joonzis.domain.CompleteVO;

public interface ComMapper {
	
	public List<CompleteVO> comList();
	public void insertCom(CompleteVO vo);
	public CompleteVO getCom(Long c_num);
	public List<CompleteVO> getname(String c_id);
	public List<CompleteVO> getPname(String cd_id);
	public int removeCom(Long c_num);
	public int updateCom(CompleteVO vo);
	public void finalinsert(CompleteVO vo);
	
}
