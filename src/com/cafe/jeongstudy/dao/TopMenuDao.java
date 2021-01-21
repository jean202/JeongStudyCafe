package com.cafe.jeongstudy.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import com.cafe.jeongstudy.beans.BoardInfoBean;

@Repository
public class TopMenuDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	/*
	public List<BoardInfoBean> getTopMenuList(){
											// select 쿼리문을 실행해서 결과를 가져온다.
		List<BoardInfoBean> topMenuList = sqlSessionTemplate.selectList("topmenu.get_topmenu_list");
		return topMenuList;
	}*/
}
