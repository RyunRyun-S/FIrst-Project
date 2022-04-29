package org.joonzis.controller;

import java.security.Principal;

import org.joonzis.domain.HeartVO;
import org.joonzis.domain.ProductVO;
import org.joonzis.service.HeartService;
import org.joonzis.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/product/*")
public class ProConteroller {
	
	@Autowired
	private ProService service;
	
	@Autowired
	private HeartService hv;

	@GetMapping("list")
	public void productList(Model model) {
		log.info("get product list... ");
		model.addAttribute("list",service.productlist());
	}
	
	@GetMapping("catelist1")
	public void procatelist(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist1());
	}
	@GetMapping("catelist2")
	public void procatelist2(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist2());
	}
	@GetMapping("catelist3")
	public void procatelist3(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist3());
	}
	@GetMapping("catelist4")
	public void procatelist4(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist4());
	}
	@GetMapping("catelist5")
	public void procatelist5(Model model) {
		log.info("catelist5");
		model.addAttribute("list", service.catelist5());
	}
	@GetMapping("catelist6")
	public void procatelist6(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist6());
	}
	@GetMapping("catelist7")
	public void procatelist7(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist7());
	}
	@GetMapping("catelist8")
	public void procatelist8(Model model) {
		log.info("catelist1");
		model.addAttribute("list", service.catelist8());
	}

	@GetMapping("prolist")
	public void proList(Model model,ProductVO vo , @RequestParam("keyword") String keyword) {
		log.info("get product list... ");
		vo.setKeyword(keyword);
		model.addAttribute("list",service.readKeword(keyword));
	}


	
	@GetMapping("register")
	public void registerProduct() {
		log.info("get product register... ");
	}
	
	@GetMapping("mainlist")
	public void mainlist(Model model) {
		log.info("go main... ");
		model.addAttribute("list1", service.realist());
		model.addAttribute("list2", service.piclist());
		model.addAttribute("list3", service.itlist());
		
	}
	

	
	@PostMapping("register") 
	public String registerProduct(ProductVO vo, RedirectAttributes rttr) {
		log.info("product register...." + vo);
		
		// 실제 데이터 삽입 완료
		service.insertProduct(vo);
		rttr.addFlashAttribute("result", vo.getP_num());
		
		return "redirect:/product/plist";
	}
	
	@GetMapping("get")
	public void getProduct(Model model, @RequestParam("p_num") Long p_num) {
		log.info("get product... ");
		model.addAttribute("pro",service.getProduct(p_num));
	}
	@GetMapping("plist")
	public void getplist(Model model,Principal prin,ProductVO vo) {
		log.info("get plist... ");
		String p_id = prin.getName();
		model.addAttribute("pro",service.getPlist(p_id));
	}
	
	@GetMapping("proDetail")
	public void getProductd(Model model, @RequestParam("p_num") Long p_num) {
		
		log.info("get listDetail... ");
		model.addAttribute("pro",service.getProduct(p_num));
	}

	
	@GetMapping("modify")
	public void modifyProducte(Model model, @RequestParam("p_num") Long p_num) {
		log.info("modify product... ");
		model.addAttribute("pro",service.getProduct(p_num));
	}
	
	@PostMapping("modify")
	public String modifyProduct(RedirectAttributes rttr, ProductVO vo) {
		log.info("modify product... ");
		rttr.addFlashAttribute("result",service.updateProduct(vo));
		return "redirect:/product/plist";
	}
	
	@PostMapping("remove")
	public String removeProduct(RedirectAttributes rttr, @RequestParam("p_num") Long p_num) {
		log.info("remove product... ");
		rttr.addFlashAttribute("result",service.removeProduct(p_num));
		return "redirect:/product/plist";
	}
	
	
}
