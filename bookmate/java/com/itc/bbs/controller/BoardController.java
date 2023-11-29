package com.itc.bbs.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itc.bbs.domain.BoardVO;
import com.itc.bbs.domain.CommentVO;
import com.itc.bbs.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService bService;
	
	@GetMapping("/board")
	public String board(Model model) throws Exception {
		model.addAttribute("list", bService.getBoardList());
		return "board/board";
	}
	
	@GetMapping("/readBoard")
	public String readBoard(@RequestParam(value="boardNo", required=true) int boardNo, Model model) throws Exception {
		model.addAttribute("board", bService.readBoard(boardNo));
		model.addAttribute("comment",bService.getCommentList(boardNo));
		model.addAttribute("count", bService.getBoardCommentCount(boardNo));
		return "board/readBoard";
	}
	
	@GetMapping("/writeBoard")
	public String createBoard(HttpSession session, RedirectAttributes redirect) {
		if(session.getAttribute("user_no") == null) {
			redirect.addFlashAttribute("NoHaveSession", true);
			return "redirect:/login";
		}
		return "board/writeBoard";
	}
	
	@PostMapping("/writeBoard")
	public String postCreateBoard(BoardVO vo,RedirectAttributes redirect, RedirectAttributes rttr) throws Exception {
		bService.writeBoard(vo);
		rttr.addFlashAttribute("write_success", true);
		return "redirect:board";
	}
	
	@GetMapping("/updateBoard")
	public String updateBoard(int boardNo) {
		return "board/updateBoard";
	}
	
	@PostMapping("/updateBoard")
	public String postUpdateBoard() {
		return "redirect:readBoard";
	}
	
	@PostMapping("/comment/write")
	public String writeComment(CommentVO vo, Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		if(session.getAttribute("user_no") == null) {
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("alert", "로그인 후 이용 가능합니다.");
			return "redirect:/login";
		}
		int userNo = (Integer) session.getAttribute("user_no");
		vo.setUserNo(userNo);
		bService.addComment(vo);
		
		int boardNo = vo.getBoardNo();
	    return "redirect:/readBoard?boardNo=" + boardNo;
	}
		
}
