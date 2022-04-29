package org.joonzis.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CompleteVO {
	private Long c_num;
	private String c_title;
	private Long c_price;
	private Date c_date;
	private String c_id;
	private String cd_id;
	
}
