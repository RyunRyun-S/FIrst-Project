package org.joonzis.controller;





import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.joonzis.domain.AuthVO;
import org.joonzis.domain.CompleteVO;
import org.joonzis.domain.MemberVO;
import org.joonzis.service.ComService;
import org.joonzis.service.HeartService;
import org.joonzis.service.MemberService;
import org.joonzis.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	ComService cs;
	
	@Autowired
	ProService ps;
	
	@Autowired
	MemberService ms;
	
	@Autowired
	HeartService hs;

	@GetMapping("/all")
	public void doAll(Model model,Principal prin) {
		log.info("doAll");
		String c_id = prin.getName();
		String h_id = prin.getName();
		model.addAttribute("list", cs.getname(c_id));
		model.addAttribute("list2", hs.getHeart(h_id));
	
	}

	@GetMapping("/member")
	public void doMember(Model model,Principal prin) {
		log.info("logined member");
		String cd_id = prin.getName();
		model.addAttribute("list", cs.getPname(cd_id));
		
	}
	@GetMapping("/admin")
	public void doAdmin(Model model) {
		log.info("admin only");
		
		model.addAttribute("list1", ms.MemberList());
		model.addAttribute("list2", cs.comList());
		model.addAttribute("list3", ps.productlist());
	}
	
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')")
	@GetMapping("/annoMember")
	public void doMember2() {
		log.info("로그인 어노테이션 멤버");
	}
	
	@Secured({"ROLE_ADMIN"})
	@GetMapping("/annoAdmin")
	public void doAdmin2() {
		log.info("어드민 어노테이션");
	}
	
	@GetMapping("/userRegister")
	public void userResgistr() {
		
	}
	@PostMapping("/userRegister") 
	public String userRegister(AuthVO avo,MemberVO vo, HttpServletRequest request)throws Exception {
		log.info("userRegister...." + vo);
		
		String userpw = pwdEncoder.encode(vo.getUserpw());
		
		vo.setUserpw(userpw);
		
		service.userjoin(vo);
		
		String auth = "ROLE_USER";
		avo.setAuth(auth);
		service.insertAuth(avo);
		
		return "redirect:/product/mainlist";
	}
	
	

	@GetMapping("memberUpdate")
	public void MemberModify() {
		log.info("memberUpdate get... ");
		
	}
	@PostMapping("memberUpdate")
	public String MemberModify(Principal principal,MemberVO vo, RedirectAttributes rttr)throws Exception {
		log.info("memberUpdate post... ");
		String userpw = pwdEncoder.encode(vo.getUserpw());
		vo.setUserpw(userpw);
		String userid = principal.getName();
		vo.setUserid(userid);
		
		rttr.addAttribute(service.memberUpdate(vo));
		return "redirect:/product/mainlist";
	}
	
	
	

	@GetMapping("/memberDelete")
	public void memberDelete() {
		log.info("memberDelete ");

		
	}

	
	@PostMapping("memberDelete")
	public String memberDelete(Principal principal,MemberVO vo, AuthVO avo, RedirectAttributes rttr)throws Exception {
		log.info("memberDelete post... ");

		String userid = principal.getName();
		vo.setUserid(userid);
		avo.setUserid(userid);
		rttr.addAttribute(service.removeAuth(userid));
		rttr.addAttribute(service.removeMember(userid));
		SecurityContextHolder.clearContext();
		return "redirect:/product/mainlist";
	}
	
	@GetMapping("/authUpdate")
	public void authUpdate() {
		log.info("memberDelete ");

		
	}
	@PostMapping("/authUpdate")
	public String authUpdate(RedirectAttributes rttr,AuthVO vo, Principal prin,@RequestParam("auth")String auth) {
		log.info("authUpdate ... ");
		String userid = prin.getName();
		vo.setUserid(userid);
		vo.setAuth(auth);
		rttr.addFlashAttribute("result",ms.authUpdate(vo));
		SecurityContextHolder.clearContext();
		return "redirect:/product/mainlist";
	}
	

}
