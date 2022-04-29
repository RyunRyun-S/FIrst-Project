package org.joonzis.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductVO {
	private Long p_num;
	private String p_id;
	private Long p_cate;
	private String p_title;
	private String p_content;
	private String p_imgf;
	private String p_imgl;
	private Long p_price;
	private Long p_price2;
	private Long p_price3;
	private Date p_date;
	private Long p_star;
	private String keyword;
}
