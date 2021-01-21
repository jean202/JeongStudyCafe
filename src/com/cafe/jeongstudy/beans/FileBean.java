package com.cafe.jeongstudy.beans;

import org.springframework.web.multipart.MultipartFile;

public class FileBean {
	private int file_idx;
	private MultipartFile original_name;
	private String system_name;
	private int file_order;
	private int file_board_idx;
	private int file_content_idx;
	
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
	public int getFile_board_idx() {
		return file_board_idx;
	}
	public void setFile_board_idx(int file_board_idx) {
		this.file_board_idx = file_board_idx;
	}
	public int getFile_content_idx() {
		return file_content_idx;
	}
	public void setFile_content_idx(int file_content_idx) {
		this.file_content_idx = file_content_idx;
	}
	
}
