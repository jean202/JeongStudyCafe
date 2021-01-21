package com.cafe.jeongstudy.Interceptor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

//import com.cafe.jeongstudy.beans.BoardInfoBean;
import com.cafe.jeongstudy.beans.UserBean;
import com.cafe.jeongstudy.service.TopMenuService;

// 서비스에 만들어 놓은 메소드 호출하기
public class TopMenuInterceptor implements HandlerInterceptor {

	//@Autowired
	//private TopMenuService topMenuService;
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	// 프리핸들러 메소드 구현
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//List<BoardInfoBean> topMenuList = topMenuService.getTopMenuList();
		//request.setAttribute("topMenuList", topMenuList);
		
		// 모델에 담아서 TopMenu.jsp구성할 때 사용하도록 하겠다
		request.setAttribute("loginUserBean", loginUserBean);
		return true; // 다음 단계로 나아갈수 있도록 - Controller로 이동
	}
}
