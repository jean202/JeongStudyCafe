package com.cafe.jeongstudy.beans;

import java.sql.Timestamp;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {
	// idx, name, pw, pw2, phonenum1~3, 
	// addr1~2, email1~2, gender, regDate, userIdExist, userLogin
	
	private int user_idx;
	
	@Size(min=2, max=10) // 최소2글자 최대10글자로 설정
	@Pattern(regexp = "[가-힣]*") // 정규표현식(한글만 입력할수 있도록 세팅)
	private String user_name;
	
	@Size(min=4, max=10)
	@Pattern(regexp = "[a-zA-Z0-9]*") // 영어와 숫자만 입력가능
	private String user_id;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*") // 영어와 숫자만 입력가능
	private String user_pw;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*") // 영어와 숫자만 입력가능
	private String user_pw2;
	
	private String user_phone1;
	private String user_phone2;
	private String user_phone3;
	private String user_addr1;
	private String user_addr2;
	private String user_email1;
	private String user_email2;
	private String user_gender;
	private Timestamp user_regDate;
	private String user_date;
	private boolean userIdExist;	
	private boolean userLogin;	

	// 최초에 false값을 가질수 있도록 false값을 넣어서 생성자를 설정
	public UserBean(){
		this.userIdExist = false;	
		this.userLogin = false;
	}
	
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}
	public String getUser_phone1() {
		return user_phone1;
	}
	public void setUser_phone1(String user_phone1) {
		this.user_phone1 = user_phone1;
	}
	public String getUser_phone2() {
		return user_phone2;
	}
	public void setUser_phone2(String user_phone2) {
		this.user_phone2 = user_phone2;
	}
	public String getUser_phone3() {
		return user_phone3;
	}	
	public void setUser_phone3(String user_phone3) {
		this.user_phone3 = user_phone3;
	}
	public String getUser_addr1() {
		return user_addr1;
	}
	public void setUser_addr1(String user_addr1) {
		this.user_addr1 = user_addr1;
	}
	public String getUser_addr2() {
		return user_addr2;
	}
	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}
	public String getUser_email1() {
		return user_email1;
	}
	public void setUser_email1(String user_email1) {
		this.user_email1 = user_email1;
	}
	public String getUser_email2() {
		return user_email2;
	}
	public void setUser_email2(String user_email2) {
		this.user_email2 = user_email2;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public Timestamp getUser_regDate() {
		return user_regDate;
	}
	public void setUser_regDate(Timestamp user_regDate) {
		this.user_regDate = user_regDate;
	}
	public String getUser_date() {
		return user_date;
	}
	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}
	public boolean isUserIdExist() {
		return userIdExist;
	}
	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}
	public boolean isUserLogin() {
		return userLogin;
	}
	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}
	// update문을 위한 getter들 만들기
	public String getUser_phone() {
		return user_phone1 + user_phone2 + user_phone3;
	}
	public String getUser_addr() {
		return user_addr1 + user_addr2;
	}
	public String getUser_email() {
		return user_email1 + user_email2;
	}
}
