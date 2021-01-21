package com.cafe.jeongstudy.beans;

import javax.validation.constraints.NotBlank;

public class ContentBean {
	private int content_idx;
	@NotBlank
	private String content_subject;
	@NotBlank
	private String content_text;	
	private String content_date; // 성강사님 버젼 윤강사님 버젼 사이에서 고민해보기
	private int content_viewcnt;
	
	public int getContent_idx() {
		return content_idx;
	}
	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
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
}
