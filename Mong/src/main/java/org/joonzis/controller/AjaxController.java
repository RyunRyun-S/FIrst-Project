package org.joonzis.controller;



import java.security.Principal;

import org.joonzis.domain.HeartVO;
import org.joonzis.service.HeartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/heart/")
public class AjaxController {
	
	@Setter(onMethod_ = @Autowired)
	private HeartService service;

	@PostMapping(value = "/new",
			consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody HeartVO vo , Principal prin){
		log.info("HeartVO : " + vo);
		String h_id = prin.getName();
		vo.setH_id(h_id);
		int insertCount = service.insertHeart(vo);
		log.info("HEART INSERT COUNT : " + insertCount);
		
		return insertCount == 1 ?
				new ResponseEntity<>("success", HttpStatus.OK) :
					new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	
	@DeleteMapping(value = "/{h_num}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("h_num") Long h_num){
		
		log.info("remove"+ h_num);
		return service.deleteHeart(h_num) ==1
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	

}
