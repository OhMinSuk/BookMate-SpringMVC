package com.itc.bbs.controller;




import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.itc.bbs.domain.RentVO;
import com.itc.bbs.domain.UserVO;
import com.itc.bbs.service.LoginService;
import com.itc.bbs.service.RegisterService;
import com.itc.bbs.service.RentService;

@Controller
public class UserController {
	 @Autowired
	 LoginService lService;
	 
	 @Autowired
	 RegisterService rService;
	 
	 @Autowired
	 RentService rentService;
	
	@GetMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@PostMapping("/login")
	public String checkLogin(UserVO vo, HttpSession session, Model model) throws Exception {
		UserVO lVo = lService.checkLogin(vo);
		
		if(lVo.getRowCount() > 0) {
			session.setAttribute("user_no", lVo.getUserNo());
			session.setAttribute("user_name", lVo.getUserName());
			session.setAttribute("user_level", lVo.getUserLevel());
			
			return "redirect:/";
		} else {
			model.addAttribute("loginInvalid", true);
			return "login/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session, RedirectAttributes redirect, RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("logout_success", true);
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/register")
	public String register() {
		return "login/register";
	}
	
	@PostMapping("/register")
	public String postRegister(UserVO vo, Model model, RedirectAttributes rttr) throws Exception {
		
		int overlapIdCheck = rService.overlapIdCheck(vo.getUserId());
		if (overlapIdCheck > 0) {
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "중복되는 아이디가 있습니다.");
			return "redirect:/register";
		}
		else {
			rService.addUser(vo);
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "회원가입 성공");
			return "redirect:/login";
		}
	}
	
	@GetMapping("/mypage")
	public String myPage(HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		if(session.getAttribute("user_no") == null) {
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "로그인 후 이용 가능합니다.");
			return "redirect:/login";
		}
		int userNo = (Integer) session.getAttribute("user_no");
		model.addAttribute("list",rentService.getRentList(userNo));
		return "login/mypage";
	}
	
	@PostMapping("/returnBook")
	public String returnBook(RentVO vo, HttpSession session, RedirectAttributes rttr)throws Exception{
		rentService.returnBook(vo);
		
		rttr.addFlashAttribute("msg", true);
		rttr.addFlashAttribute("alert", "반납이 완료되었습니다.");
		
		return "redirect:/mypage";
	}
	
	@PostMapping("/extendBook")
	public String extendBook(RentVO vo, HttpSession session, RedirectAttributes rttr)throws Exception{
		if(vo.getRentExtend() == 0) {
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "이미 연장하신 도서입니다.");
			return "redirect:/mypage";
		}else {
			rentService.extendBook(vo);
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "연장이 완료되었습니다.");		
			return "redirect:/mypage";
		}
	}
}
