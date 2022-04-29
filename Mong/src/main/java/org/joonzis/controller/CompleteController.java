package org.joonzis.controller;

import java.security.Principal;

import org.joonzis.domain.CompleteVO;
import org.joonzis.domain.MemberVO;
import org.joonzis.service.ComService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/complete/*")
public class CompleteController {
	@Autowired
	private ComService service;
	
	@GetMapping("list")
	public void completeList(Model model) {
		log.info("get complete list... ");
		model.addAttribute("list",service.comList());
	}
	
	@GetMapping("register")
	public void registerComplete() {
		log.info("get complete register... ");
	}
	

	
	@PostMapping("register") 
	public String registerComplete(CompleteVO vo, RedirectAttributes rttr,Principal prin) {
		log.info("complete register...." + vo);
		
		String c_id = prin.getName();
		vo.setC_id(c_id);
		service.insertCom(vo);
		rttr.addFlashAttribute("result", vo.getC_num());
		
		return "redirect:/login/all";
	}
	

	
	@GetMapping("get")
	public void getComplete(Model model, @RequestParam("c_num") Long c_num) {
		log.info("get complete... ");
		model.addAttribute("com",service.getCom(c_num));
	}
	
	@GetMapping("modify")
	public void modifyComplete(Model model, @RequestParam("c_num") Long c_num) {
		log.info("modify complete... ");
		model.addAttribute("com",service.getCom(c_num));
	}
	
	@PostMapping("modify")
	public String modifyCompletee(RedirectAttributes rttr, CompleteVO vo) {
		log.info("modify complete... ");
		rttr.addFlashAttribute("result",service.updateCom(vo));
		return "redirect:/complete/list";
	}
	
	@PostMapping("remove")
	public String removeComplete(RedirectAttributes rttr, @RequestParam("c_num") Long c_num) {
		log.info("remove complete... ");
		rttr.addFlashAttribute("result",service.removeCom(c_num));
		return "redirect:/complete/list";
	}
	
	
	
	@PostMapping("userCList")
	public String userCList(Principal principal,CompleteVO vo, RedirectAttributes rttr) {
		log.info("userclist");
		String c_id = principal.getName();
		vo.setC_id(c_id);
		rttr.addFlashAttribute("list",service.getname(c_id));
		
		return "/login/all";
	}
	
}
