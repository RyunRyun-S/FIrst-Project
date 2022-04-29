package org.joonzis.service;

import java.util.List;

import org.joonzis.domain.AuthVO;
import org.joonzis.domain.MemberVO;
import org.springframework.stereotype.Service;


public interface MemberService {
	
	public void userjoin(MemberVO vo);
	public void insertAuth(AuthVO vo);
	
	public List<MemberVO> MemberList();
	public boolean memberUpdate(MemberVO vo);
	public boolean authUpdate(AuthVO vo);
	public boolean removeMember(String userid);
	public boolean removeAuth(String userid);
}
