package com.itc.bbs.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itc.bbs.service.BookService;
import com.itc.bbs.service.NoticeService;

@Controller
public class MainController {
	
	@Autowired
	NoticeService nService;
	
	@Autowired
	BookService bService;
	
	@GetMapping("/")
	public String mainPage(Model model) throws Exception {
		model.addAttribute("newBook",bService.getNewBook());
		model.addAttribute("bestBook",bService.getBestBook());
		return "main";
	}
	
	@GetMapping("/admin")
	public String adminPage() {
		return "admin/adminMain";
	}
	
	@GetMapping("/notice")
	public String noticePage(Model model)throws Exception {
		model.addAttribute("noticeList",nService.getNoticeList());
		return "notice/notice";
	}
	
	@RequestMapping(value="/readNotice", method=RequestMethod.GET)
	public String readNotice(@RequestParam("noticeNo")int noticeNo, Model model)throws Exception{
		model.addAttribute(nService.readNotice(noticeNo));
		return "notice/readNotice";
	}
	
}
