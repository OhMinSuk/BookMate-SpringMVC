package com.itc.bbs.controller;



import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itc.bbs.domain.BookVO;
import com.itc.bbs.domain.NoticeVO;
import com.itc.bbs.service.AdminService;
import com.itc.bbs.service.BoardService;
import com.itc.bbs.service.BookService;
import com.itc.bbs.service.HopeBookService;
import com.itc.bbs.service.NoticeService;
import com.itc.bbs.service.RentService;


@Controller
public class AdminController {
	
	@Autowired
	AdminService aService;
	
	@Autowired
	HopeBookService hService;
	
	@Autowired
	NoticeService nService;
	
	@Autowired
	BookService bService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	RentService rService;
	
	@GetMapping("/admin/userList")
	public String userListPage(Model model) throws Exception {
		 model.addAttribute("userList", aService.getUserList());
		return "admin/userList";
	}
	

	@GetMapping("/admin/hopeBook")
	public String hopeBookListPage(Model model) throws Exception{
		model.addAttribute("hopeBook", hService.getHopeBookList());
		return "admin/hopeBook";
	}
	
	@GetMapping("/admin/adminBook")
	public String bookListPage(@RequestParam(name="bookGenre", defaultValue="")String bookGenre,Model model) throws Exception{
		model.addAttribute("bookList", bService.getBookList(bookGenre));
		return "admin/adminBook";
	}
	
	@GetMapping("/admin/adminBookChart")
	public String bookChartPage(Model model) throws Exception{
		
		List<HashMap<String, String>> rentChartData = bService.getRentChartData();
		List<HashMap<String, String>> genreChartData = bService.getGenreChartData();
		
		model.addAttribute("rentChartData", rentChartData);
		model.addAttribute("genreChartData", genreChartData);
		
		return "admin/adminBookChart";
	}
	
	@GetMapping("/admin/adminRentChart")
	public String rentChartPage(Model model) throws Exception{
		List<HashMap<String, String>> genderChartData = bService.getGenderChartData();
		List<HashMap<String, String>> dateChartData = bService.getDateChartData();
        LocalDate firstDayOfMonth = LocalDate.now().withDayOfMonth(1);
        LocalDate now = LocalDate.now();
        
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedFirstDay = firstDayOfMonth.format(formatter);
        String formattedNow = now.format(formatter);
		
        model.addAttribute("firstDayOfMonth", formattedFirstDay);
        model.addAttribute("now", formattedNow);
		model.addAttribute("genderChartData", genderChartData);
		model.addAttribute("dateChartData", dateChartData);
		return "admin/adminRentChart";
	}
	
	@GetMapping("/admin/addBook")
	public String addBookPage() {
		return "admin/addBook";
	}
	
	@PostMapping("/admin/addBook")
	public String addBook(BookVO vo, MultipartFile bookFile, RedirectAttributes redirect, RedirectAttributes rttr) throws Exception {
		String fileRealName = bookFile.getOriginalFilename();
		String fileExt = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
		String uploadFolder = "D:/3학년1학기/BookMate/bookmate/src/main/webapp/resources/uploadFiles/";
		
		int lastBookNo = bService.getLastBookNo() + 1;
		
		String saveFileName = lastBookNo + fileExt;
		File image = new File(uploadFolder + saveFileName);
		
		try {
			bookFile.transferTo(image);			
		} catch(IllegalStateException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		vo.setBookImage(saveFileName);
		
		rttr.addFlashAttribute("add_success", true);
		bService.addBook(vo);
		
		return "redirect:adminBook";
	}
	
	@GetMapping("/admin/adminNotice")
	public String adminNotice(Model model) throws Exception{
		model.addAttribute("noticeList",nService.getNoticeList());
		return "admin/adminNotice";
	}
	
	@GetMapping("/deleteNotice")
	public String deleteNotice(int noticeNo,RedirectAttributes redirect, RedirectAttributes rttr) throws Exception{
		rttr.addFlashAttribute("delete_success", true);
		nService.deleteNotice(noticeNo);
		return "redirect:admin/adminNotice";
	}
	
	@GetMapping("/admin/writeNotice")
	public String writeNoticePage() {
		return "admin/writeNotice";
	}
	
	@PostMapping("/admin/writeNotice")
	public String writeNotice(NoticeVO vo,RedirectAttributes redirect, RedirectAttributes rttr)throws Exception{
		rttr.addFlashAttribute("write_success", true);
		nService.writeNotice(vo);
		return "redirect:adminNotice";
	}
	
	@GetMapping("/admin/adminBoard")
	public String board(Model model) throws Exception {
		model.addAttribute("list", boardService.getBoardList());
		return "admin/adminBoard";
	}
	
	@GetMapping("/deleteBoard")
	public String deleteBoard(int boardNo,RedirectAttributes redirect, RedirectAttributes rttr) throws Exception{
		rttr.addFlashAttribute("delete_success", true);
		boardService.deleteBoard(boardNo);
		return "redirect:admin/adminBoard";
	}
	
	@GetMapping("/admin/rentList")
	public String rentList(Model model) throws Exception {
		model.addAttribute("list", rService.getAllList());
		return "admin/rentList";
	}
}
