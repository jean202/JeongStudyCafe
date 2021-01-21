package com.cafe.jeongstudy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cafe.jeongstudy.service.UserService;

@RestController
public class RestApiController {
	
	@Autowired
	private UserService userService;
	// 이런 이름으로 요청하도록 함
	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		// 서비스에 있는 메소드를 호출
		boolean chk = userService.checkuserIdExist(user_id);
		// 레스트컨트롤러의 메소드같은 경우 문자열이 아닌 다른것을 반환할 때 잭슨 이용해서 json만들어줘야 해서 복잡하다. 값 하나만을 보내겠다고 한다면 가급적 문자열로 보내는 것이 간단하다. 
		return chk + "";
	}
	
}
