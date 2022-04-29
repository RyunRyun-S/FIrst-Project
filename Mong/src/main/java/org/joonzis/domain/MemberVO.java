package org.joonzis.domain;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String userid;
	private String userpw;
	private String userName;
	private Date regDate;
	private Date updateDate;
	private boolean enabled;
	private String userbirth;
	private String useremail;
	
	// 추가 내용
	private List<AuthVO> authList;
}
