package com.itc.bbs.controller;



import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itc.bbs.domain.HopeBookVO;
import com.itc.bbs.domain.RentVO;
import com.itc.bbs.service.BookService;
import com.itc.bbs.service.HopeBookService;
import com.itc.bbs.service.RentService;

@Controller
public class BookController {
	
	@Autowired
	HopeBookService hService;
	
	@Autowired
	BookService bService;
	
	@Autowired
	RentService rService;
	
	
	
	@GetMapping("/book")
	public String bookList(@RequestParam(name="bookGenre", defaultValue="")String bookGenre, Model model)throws Exception {
		model.addAttribute("bookList",bService.getBookList(bookGenre));
		return "book/bookList";
	}
	
	@RequestMapping(value="/readBook", method=RequestMethod.GET)
	public String readBook(@RequestParam("bookNo")int bookNo, Model model)throws Exception{
		model.addAttribute(bService.readBook(bookNo));
		return "book/readBook";
	}
	
	@GetMapping("/book/hope")
	public String bookHope(HttpSession session, Model model) {
		if(session.getAttribute("user_no") == null) {
			model.addAttribute("no_have_session", true);
		}
		
		return "book/hope";
	}
	
	@PostMapping("/book/hope")
	public String postBookHope(HopeBookVO vo, HttpSession session, RedirectAttributes redirect, RedirectAttributes rttr) throws Exception {
		vo.setUserNo((Integer) session.getAttribute("user_no"));
		int result = hService.createHopeBook(vo);
		if(result > 0) {
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "도서 신청이 완료되었습니다.");
		} else {
			System.out.println("데이터베이스에 도서 신청 데이터가 생성되지 않았습니다.");
		}
		
		return "redirect:/";
	}
	
	// 대출 신청 버튼을 누르면 실행함
	@PostMapping("/rentBook")
	public String postRentBook(RentVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		// 현재 로그인 된 유저 번호
		// 현재 내가 대여한 책인지 확인 (IF)
		// 현재 날짜를 기준으로 시작일 지정
		// 현재 날짜에서 일주일이 되는 날을 종료일 지정
		if(session.getAttribute("user_no") == null) {
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "로그인 후 이용할 수 있는 서비스입니다.");
			return "redirect:/login";
		}
			
		// 얘는 여기있어야 됨
		// 그래야 값이 제대로 넘어감
		int userNo = (Integer) session.getAttribute("user_no");
		vo.setUserNo(userNo);
		
		// isRentBook이 1이면 현재 대여중인 도서임.
		if(rService.isRentBook(vo) == 1){
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "이미 대여중인 도서입니다.");
			return "redirect:/book";
		}
		
		Calendar cal = Calendar.getInstance(); 
		cal.add(Calendar.DATE,  7);
		
		Date now = new Date();
		Date end = new Date(cal.getTimeInMillis());
		
		vo.setRentStartDate(now);
		vo.setRentEndDate(end);
		
		rService.rentBook(vo);
		
		rttr.addFlashAttribute("msg", true);
		rttr.addFlashAttribute("alert", "대여가 완료되었습니다.");		
		return "redirect:/mypage";
	}
	
}
