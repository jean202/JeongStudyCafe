package com.cafe.jeongstudy.beans;

public class QnaBean {
	private int qna_content_idx;
	private int qna_user_idx;
	private int qna_board_idx;
	private String is_secret; 
	private String is_alert;	
	
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
}
