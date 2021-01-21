package com.cafe.jeongstudy.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.cafe.jeongstudy.beans.UserBean;
import com.cafe.jeongstudy.dao.UserDao;

@Service
public class UserService {
	// 넘겨받은 값이 null인지여부에 따라 사용할 수 있냐 없냐를 판단
	@Autowired
	private UserDao userDao;
	
	@Resource(name = "loginUserBean")
	@Lazy	// 서버실행될때 주입하지 말고 요청 되었을때 주입해라
	private UserBean loginUserBean;
	
	public boolean checkuserIdExist(String user_id) {
		// DB에 있는 사용자 값을 가져오기
		String user_name = userDao.checkUserIdExist(user_id);
		if(user_name == null) {
			return true;
		}else {
			return false;
		}
	}
	// 회원가입
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	// 로그인 성공했을 때 처리
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		//UserDao에 있는 정보를 먼저 가져오기
		UserBean tempLoginUserBean2 = userDao.getLoginUserInfo(tempLoginUserBean);
		if(tempLoginUserBean2 != null) {
			loginUserBean.setUser_idx(tempLoginUserBean2.getUser_idx());
			loginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			loginUserBean.setUserLogin(true);
		}	
	}
	public void getModifyUserInfo(UserBean modifyUserBean) {
		UserBean tempModifyUserBean = userDao.getModifyUserInfo(loginUserBean.getUser_idx());
		modifyUserBean.setUser_id(tempModifyUserBean.getUser_id());
		modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
		modifyUserBean.setUser_idx(tempModifyUserBean.getUser_idx());
	}
	public void modifyUserInfo(UserBean modifyUserBean) {
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		userDao.modifyUserInfo(modifyUserBean);
	}
}
