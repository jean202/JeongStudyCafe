package com.cafe.jeongstudy.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.jeongstudy.beans.ContentBean;
import com.cafe.jeongstudy.beans.FileBean;
import com.cafe.jeongstudy.beans.QnaBean; 

@Repository
public class QnaBoardDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void addQnaContent(ContentBean contentBean) {
	sqlSessionTemplate.insert("qnaboard.addQnaContent", contentBean);
	}
	public void addQnaBoard(QnaBean qnaBean) {
		sqlSessionTemplate.insert("qnaboard.addQnaBoard", qnaBean);
	}
	public void addQnaFile(FileBean fileBean) {
		sqlSessionTemplate.insert("qnaboard.addQnaFile", fileBean);
	}
	public String getBoardInfoName(int board_info_idx){
		return sqlSessionTemplate.selectOne("qnaboard.getBoardInfoName", board_info_idx);
	}

}
