package com.cafe.jeongstudy.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.cafe.jeongstudy.beans.UserBean;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// UserBean객체에 있는 값들을 유효성검사 할것임
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// 유효성 검사하는 코드 입력
		// 유효성 검사를 하기 위한 정보가 담겨있는 Bean객체 target이 넘어옴
		UserBean userBean = (UserBean)target;

		String beanName = errors.getObjectName();

		if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {
			if(userBean.getUser_pw().equals(userBean.getUser_pw2()) == false) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
			} 	
		}
		if(beanName.equals("joinUserBean")) {
			// id가 없으면 properties에 DontCheckUserIdExist를 내보내렴
			if(userBean.isUserIdExist() == false) {
				errors.rejectValue("user_id", "DontCheckUserIdExist");
			}
		}
	}

}
