package com.cafe.jeongstudy.service;

import java.io.File;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.cafe.jeongstudy.beans.ContentBean;
import com.cafe.jeongstudy.beans.FileBean;
import com.cafe.jeongstudy.beans.QnaBean;
import com.cafe.jeongstudy.beans.QnaCombineBean;
//import com.cafe.jeongstudy.beans.PageBean;
import com.cafe.jeongstudy.beans.UserBean;
import com.cafe.jeongstudy.dao.QnaBoardDao;

@Service
public class QnaService {
	// 경로를 주입받기
	@Value("${path.upload}")
	private String path_upload;
	/*
	@Value("${page.listcnt}")
	private int page_listcnt;
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;*/

	// DAO 주입받기
	@Autowired
	private QnaBoardDao boardDao;
	// 현재 로그인한 사용자 정보 주입받기
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	// 글쓰기	
	@Transactional
	public void addQnaWriteContent(QnaCombineBean qnaCombineBean) {
		MultipartFile original_name = qnaCombineBean.getOriginal_name();
		if (original_name.getSize() > 0) {
			String file_name = saveUploadFile(original_name);
			qnaCombineBean.setSystem_name(file_name);
		}
		// 로그인한 사용자의 idx를 DB로 전달 qna_user_idx		
		int user_idx = loginUserBean.getUser_idx();
		qnaCombineBean.setQna_user_idx(user_idx);
		// DAO호출
		// <insert id="addQnaBoard" parameterType="java.lang.Integer">		
		boardDao.addQnaBoard(qnaCombineBean.getQnaBean());	
		boardDao.addQnaFile(qnaCombineBean.getFileBean());		
		boardDao.addQnaContent(qnaCombineBean.getContentBean());			
	}

	// 파일을 저장하는 메소드 만들기
	private String saveUploadFile(MultipartFile original_name) {
		// 중복파일이 올라오면 덮어씌워지기 때문에 파일 이름 앞에 현재 시간을 붙여주기
		String file_name = System.currentTimeMillis() + "_" + original_name.getOriginalFilename();
		try {
			// 파일 저장
			original_name.transferTo(new File(path_upload + "/" + file_name));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return file_name;
	}

//	// Bean을 받고 파일 저장 메소드를 호출해서 파일 저장 
//		public void addContentInfo(ContentBean writeContentBean) {
//			MultipartFile upload_file = writeContentBean.getUpload_file(); 
//			if (upload_file.getSize() > 0) { 
//				String file_name = saveUploadFile(upload_file); // 파일 이름을 DB에 넣어주기 위한 처리
//				writeContentBean.setContent_file(file_name); 
//				} // 로그인한 사용자의 idx를 DB로 전달
//			writeContentBean.setContent_writer_idx(loginUserBean.getUser_idx()); // DAO호출
//			boardDao.addContentInfo(writeContentBean); 
//		}
		
	public String getBoardInfoName(int board_info_idx) { 
		return boardDao.getBoardInfoName(board_info_idx); 
	}
	/*
	 * public List<ContentBean> getContentList(int board_info_idx, int page){ //
	 * (1-1) * 10 = 0 , 10 처음부터 10개 보여주기 int start = (page - 1) * page_listcnt;
	 * RowBounds rowBounds = new RowBounds(start, page_listcnt); return
	 * boardDao.getContentList(board_info_idx, rowBounds); }
	 * 
	 * 
	 * 
	 * // 첨부된 파일이 있을 경우도 처리 public void modifyContentInfo(ContentBean
	 * modifyContentBean) { // 첨부된 파일을 가져오기 MultipartFile upload_file =
	 * modifyContentBean.getUpload_file(); if (upload_file.getSize() > 0) { String
	 * file_name = saveUploadFile(upload_file); // 새로운 파일 이름으로 처리해주기
	 * modifyContentBean.setContent_file(file_name); } // if문 통과 안하면 예전 파일 이름이 들어간다.
	 * boardDao.modifyContentInfo(modifyContentBean); } public void
	 * deleteContentInfo(int content_idx) { boardDao.deleteContentInfo(content_idx);
	 * } public PageBean getContentCnt(int content_board_idx, int currentPage) { int
	 * content_cnt = boardDao.getContentCnt(content_board_idx); PageBean pageBean =
	 * new PageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);
	 * return pageBean; }
	 */
}
