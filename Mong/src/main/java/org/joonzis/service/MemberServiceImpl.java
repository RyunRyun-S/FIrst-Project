package org.joonzis.service;


import java.util.List;

import org.joonzis.domain.AuthVO;
import org.joonzis.domain.MemberVO;
import org.joonzis.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class MemberServiceImpl implements MemberService{

	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Override
	public void userjoin(MemberVO vo) {
		log.info("insert userjoin... : "+vo );
		 mapper.userjoin(vo);
		
	}

	@Override
	public void insertAuth(AuthVO vo) {
		log.info("insert auth... : "+vo );
		mapper.insertAuth(vo);
	}

	@Override
	public List<MemberVO> MemberList() {
		log.info("get memberlist");
		return mapper.MemberList();
	}



	@Override
	public boolean memberUpdate(MemberVO vo) {
		log.info("memberUpdate");
		return mapper.memberUpdate(vo);
	}

	@Override
	public boolean removeMember(String userid) {
		log.info("removeMember");
		return mapper.removeMember(userid);
	}

	@Override
	public boolean removeAuth(String userid) {
		log.info("removeAuth");
		return mapper.removeAuth(userid);
	}

	@Override
	public boolean authUpdate(AuthVO vo) {
		log.info("authUpdate");
		return mapper.authUpdate(vo);
	}









}
