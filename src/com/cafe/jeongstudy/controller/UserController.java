package com.cafe.jeongstudy.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.jeongstudy.beans.UserBean;

import com.cafe.jeongstudy.service.UserService;
import com.cafe.jeongstudy.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	public UserController() {
		System.out.println("UserController 실행");
	}
	// 성익
	/*
	@RequestMapping(value = "/join", method = {RequestMethod.GET, RequestMethod.POST}, produces="text/plain;charset=UTF-8")
	public String join() {
		return "user/join";
	}
	*/
	@RequestMapping(value = "/idCheckForm", method = {RequestMethod.GET, RequestMethod.POST}, produces="text/plain;charset=UTF-8")
	public String idCheckForm() {
		return "user/idCheckForm";
	}
	/*
	@RequestMapping(value = "/jusoPopup", method = {RequestMethod.GET, RequestMethod.POST}, produces="text/plain;charset=UTF-8")
	public String jusoPopup(@ModelAttribute("paramVO") UserBean paramVO) throws Exception {
		return "user/jusoPopup";
	}
	*/
	@GetMapping("/jusoPopup")
	public String jusoAPI() {
		return "user/jusoPopup";
	}
	@PostMapping("/jusoPopup")
	public String jusoPopup() {
		return "user/jusoPopup";
	}
	/*
	@PostMapping("/authentication")
	public String authentication() {
		return "user/authentication";
	}	
	@RequestMapping(value = "/joinOk")
	public String joinOk(UserBean dto, Model model) {
		System.out.println("controller dto : " + dto.toString());
		new JoinCommand().execute(model);
		return "user/joinOk";
	}		
	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST}, produces="text/plain;charset=UTF-8")
	public String login() {
		return "user/login";
	}
	*/
	// 내 컨트롤러에 있던것
	@Autowired
	private UserService userService;
	
	// 세션 영역에 저장되어 있는 Bean을 주입받기
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {
		model.addAttribute("fail", fail);
		return "user/login";
	}
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, BindingResult result) {
		if(result.hasErrors()) {
			return "user/login";
		}
		userService.getLoginUserInfo(tempLoginUserBean);
		if(loginUserBean.isUserLogin() == true) {	
			return "user/login_success";
		}else {
			return "user/login_fail";
		}
	}	
	
	// userBean을 modelAttribute로 주입받아 사용하기
	@GetMapping("/join")	// 이 문법 이해안감;;jsp에서form으로 날라오는 이녀석을 아래 url로 안내하겠다는건가?
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join";
	}
	
	@PostMapping("/join_pro")															// 유효성검사결과를갖고있음						
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) { 
		if(result.hasErrors()) {
			return "user/join";
		}
		userService.addUserInfo(joinUserBean);
		return "user/join_success";
	}	
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {
		userService.getModifyUserInfo(modifyUserBean);
		return "user/modify";
	}
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {
		if (result.hasErrors()) {
			return "user/modify";
		}
		userService.modifyUserInfo(modifyUserBean);
		return "user/modify_success";
	}
	@GetMapping("/logout")
	public String logout() {
		loginUserBean.setUserLogin(false);
		return "user/logout";
	}
	@GetMapping("/not_login")
	public String not_login() {
		return "user/not_login";
	}
	
	// 비밀번호 일치 유효성 검사
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}
}
