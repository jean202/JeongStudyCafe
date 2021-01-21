package com.cafe.jeongstudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.cafe.jeongstudy.beans.BoardInfoBean;
import com.cafe.jeongstudy.dao.TopMenuDao;

@Service
public class TopMenuService {
	@Autowired
	private TopMenuDao topMenuDao; // TopMenuDao를 주입받을 수 있도록 한다.
	/*
	// dao의 메소드 호출을 해서 반환
	public List<BoardInfoBean> getTopMenuList(){
		List<BoardInfoBean> topMenuList = topMenuDao.getTopMenuList();
		return topMenuList;
	}*/
}
