package com.cafe.jeongstudy.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.jeongstudy.beans.UserBean;

@Controller
public class HomeController {
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		System.out.println();
		return "redirect:/main";
	}
	
}
