package org.joonzis.mapper;


import java.util.List;

import org.joonzis.domain.AuthVO;
import org.joonzis.domain.CompleteVO;
import org.joonzis.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String userid);
	public void userjoin(MemberVO vo);
	public void insertAuth(AuthVO vo);
	
	public List<MemberVO> MemberList();
	public boolean memberUpdate(MemberVO vo);
	public boolean authUpdate(AuthVO vo);
	public boolean removeMember(String userid);
	public boolean removeAuth(String userid);
}
