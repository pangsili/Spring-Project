package com.test.controller;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginDTO {
	
	@Size(min = 0, max = 20, message = "글자수가 너무 많습니다.")
	@NotEmpty(message = "id를 입력해주세요.")
	private String userID;
	
	@Size(min = 0, max = 20, message = "글자수가 너무 많습니다.")
	@NotEmpty(message = "pwd를 입력해주세요.")
	private String userPassword;

	
	
	
	
	
	
	
	
	
	
	
	
	
	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	
}