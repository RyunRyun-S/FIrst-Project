package org.joonzis.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HeartVO {
	private Long h_num;
	private String h_img;
	private String h_title;
	private Date h_date;
	private String h_id;
}
