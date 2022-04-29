package org.joonzis.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data	// setter / getter 및 toString() 메소드 등
@AllArgsConstructor	// 모든 필드를 입력받는 생성자
@NoArgsConstructor	// 기본 생성자(필드 x)
public class Criteria {
	private int pageNum;
	private int amount;
	
}
