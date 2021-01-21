package com.cafe.jeongstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro")
public class IntroController {
	@GetMapping("/jeongstudy")
	public String jeongstudy() {
		return "intro/jeongstudy";
	}
	@GetMapping("/directions")
	public String directions() {
		return "intro/directions";
	}
}
