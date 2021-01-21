package com.cafe.jeongstudy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/event")
public class EventboardController {
	@RequestMapping(value = "/list")
	public String eventList(Model model) {
		
		return "event/eventBoardList";
	}
	@RequestMapping(value = "/view")
	public String eventView(int writeNum, Model model) {
		model.addAttribute("writeNum", writeNum);
		
		return "eventboard/eventBoardView";
	}
	@RequestMapping(value = "/write")
	public String eventWrite() {
		return "eventboard/eventBoardWrite";
	}
	@RequestMapping(value = "/writeOk")
	public String eventWriteOk() {
		
		return "eventboard/eventBoardWriteOk";
	}
	@RequestMapping(value = "/update")
	public String eventUpdate(int writeNum, Model model, HttpServletRequest req) {
		
		return "eventboard/eventBoardUpdate";
	}
	@RequestMapping(value = "/updateOk")
	public String eventUpdateOk() {
		
		return "eventboard/eventBoardUpdateOk";
	}
	@RequestMapping(value = "/deleteOk")
	public String eventDeleteOk() {
		
		return "eventboard/eventBoardDeleteOk";
	}
}
