package com.cafe.jeongstudy.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;
//#{content_subject}, #{content_text}, #{original_name}, #{system_name}
public class QnaCombineBean {
	QnaBean qnaBean = new QnaBean(); 
	FileBean fileBean = new FileBean();
	ContentBean contentBean = new ContentBean();
	private int qna_content_idx = qnaBean.getQna_content_idx();
	private int qna_user_idx = qnaBean.getQna_user_idx();
	private int qna_board_idx = qnaBean.getQna_board_idx();
	private String is_secret = qnaBean.getIs_secret(); 
	private String is_alert = qnaBean.getIs_alert();	
	private int file_idx = fileBean.getFile_idx();
	private MultipartFile original_name = fileBean.getOriginal_name();
	private String system_name = fileBean.getSystem_name();
	private int file_order = fileBean.getFile_order();
	@NotBlank
	private String content_subject = contentBean.getContent_subject();
	@NotBlank
	private String content_text = contentBean.getContent_text();	
	private String content_date = contentBean.getContent_date(); // 성강사님 버젼 윤강사님 버젼 사이에서 고민해보기
	private int content_viewcnt = contentBean.getContent_viewcnt();
	
	public int getQna_content_idx() {
		return qna_content_idx;
	}
	public void setQna_content_idx(int qna_content_idx) {
		this.qna_content_idx = qna_content_idx;
	}
	public int getQna_user_idx() {
		return qna_user_idx;
	}
	public void setQna_user_idx(int qna_user_idx) {
		this.qna_user_idx = qna_user_idx;
	}
	public int getQna_board_idx() {
		return qna_board_idx;
	}
	public void setQna_board_idx(int qna_board_idx) {
		this.qna_board_idx = qna_board_idx;
	}
	public String getIs_secret() {
		return is_secret;
	}
	public void setIs_secret(String is_secret) {
		this.is_secret = is_secret;
	}
	public String getIs_alert() {
		return is_alert;
	}
	public void setIs_alert(String is_alert) {
		this.is_alert = is_alert;
	}
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public MultipartFile getOriginal_name() {
		return original_name;
	}
	public void setOriginal_name(MultipartFile original_name) {
		this.original_name = original_name;
	}
	public String getSystem_name() {
		return system_name;
	}
	public void setSystem_name(String system_name) {
		this.system_name = system_name;
	}
	public int getFile_order() {
		return file_order;
	}
	public void setFile_order(int file_order) {
		this.file_order = file_order;
	}
	public String getContent_subject() {
		return content_subject;
	}
	public void setContent_subject(String content_subject) {
		this.content_subject = content_subject;
	}
	public String getContent_text() {
		return content_text;
	}
	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}
	public String getContent_date() {
		return content_date;
	}
	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}
	public int getContent_viewcnt() {
		return content_viewcnt;
	}
	public void setContent_viewcnt(int content_viewcnt) {
		this.content_viewcnt = content_viewcnt;
	}
	public QnaBean getQnaBean() {
		return qnaBean;
	}
	public void setQnaBean(QnaBean qnaBean) {
		this.qnaBean = qnaBean;
	}
	public FileBean getFileBean() {
		return fileBean;
	}
	public void setFileBean(FileBean fileBean) {
		this.fileBean = fileBean;
	}
	public ContentBean getContentBean() {
		return contentBean;
	}
	public void setContentBean(ContentBean contentBean) {
		this.contentBean = contentBean;
	}	
}
